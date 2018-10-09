require 'test/unit'
require 'pry'

class Person;
end

class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    add_checked_attribute(Person, :age)
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuses_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = nil
    end
  end
end

def add_checked_attribute(klass, attribute)
  eval <<-EOS
  class #{klass}
    def #{attribute}=(value)
      raise 'Invalid attribute' unless value
      @#{attribute} = value
    end

    def #{attribute}()
      @#{attribute}
    end
  end
  EOS
end