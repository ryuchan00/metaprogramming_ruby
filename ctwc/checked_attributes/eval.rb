require 'test/unit'
require 'pry'

class Person;
end

class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    add_checked_attribute(Person, :age) { |v| v >= 18 }
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuses_invalid_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = 17
    end
  end
end

def add_checked_attribute(klass, attribute)
  klass.class_eval {
    # 呼ばれたら、attributeのgetter,setterを定義してあげる
    define_method attribute do
      instance_variable_get("@#{attribute}")
    end

    define_method "#{attribute}=" do |value|
      # setterにて、呼ばれた場合は、nilまたはfalseの場合はエラーにする
      raise 'Invalid attribute' unless value
      instance_variable_set("@#{attribute}", value)
    end
  }
end
