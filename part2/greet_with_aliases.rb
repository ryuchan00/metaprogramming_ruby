module Greetings
  def greet
    "hello"
  end
end

class MyClass
  include Greetings
end

p MyClass.new.greet # => "hello

class MyClass2
  include Greetings

  def greet_with_enthusiasm
    "Hey, #{greet_without_enthusiasm}!"
  end

  alias_method :greet_without_enthusiasm, :greet
  alias_method :greet, :greet_with_enthusiasm
end

p MyClass2.new.greet