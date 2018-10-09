module MyModule
  def my_method; puts 'hello'; end
end

class MyClass
  extend MyModule
end

MyClass.my_method # NoMethodError!

class MyClass2; end

MyClass2.extend(MyModule)
MyClass2.my_method
