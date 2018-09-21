require 'pry'

# ref https://docs.ruby-lang.org/ja/latest/class/Class.html#S_NEW
klass = Class.new(Array)
klass.class_eval do
  def my_method
    'Hello!'
  end
end
p klass.instance_methods.grep /my_method/

c = Class.new(Array) do
  def my_method
    'Hello!'
  end
end
MyClass = c
p c.name
p c.my_method
