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

  def test_refuses_nil_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = nil
    end
  end

  def test_refuses_false_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = false
    end
  end
end

def add_checked_attribute(klass, attribute)
  # eval <<-EOS
  # class #{klass}
  #   def #{attribute}=(value)
  #     raise 'Invalid attribute' unless value
  #     @#{attribute} = value
  #   end
  #
  #   def #{attribute}()
  #     @#{attribute}
  #   end
  # end
  # EOS

  klass.class_eval {
    # 呼ばれたら、attributeのgetter,setterを定義してあげる
    define_method attribute do
      eval("@#{attribute}")
    end

    define_method "#{attribute}=" do |value|
      # setterにて、呼ばれた場合は、nilまたはfalseの場合はエラーにする
      raise 'Invalid attribute' unless value
      eval_string = <<-EOS
      @#{attribute} = value
      EOS
      eval(eval_string)
    end
  }
end
