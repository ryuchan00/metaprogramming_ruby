require 'test/unit'

module CheckedAttributes
  def self.included(klass)
    klass.extend ClassMethods
  end

  # module ClassMethods
    def attr_checked(attribute, &condition)
      raise RuntimeError unless block_given?
      define_method "#{attribute}=" do |value|
        raise RuntimeError unless yield(value)
        instance_variable_set("@#{attribute}", value)
      end

      define_method attribute do
        instance_variable_get("@#{attribute}")
      end
    end
  # end
end

class Person
  # include CheckedAttributes
  extend CheckedAttributes

  attr_checked :age do |v|
    v >= 18
  end
end

class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_fefuses_invalid_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = 17
    end
  end

  def test_no_block_given
    assert_raises RuntimeError do
      Person.class_eval do
        attr_checked :invalid_age
      end
    end
  end
end
