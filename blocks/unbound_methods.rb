module MyModule
  def my_method
    42
  end
end

unbound = MyModule.instance_method(:my_method)
p unbound.class

# String Classにてanother_methodを定義する
# メソッドの中身はunbound = my_method
String.send :define_method, :another_method, unbound
p "abc".another_method
