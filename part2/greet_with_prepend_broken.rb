module EnthusiasticGreetings
  def greet
    "Hey, #{super}!"
  end
end

class MyClass
  include EnthusiasticGreetings

  def greet
    "hello"
  end
end

p MyClass.ancestors[0..2] # => [MyClass, EnthusiasticGreetings, Object]
p MyClass.new.greet # => "hello"
