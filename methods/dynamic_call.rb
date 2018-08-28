# 動的メソッド
class MyClass
  def my_method(my_arg)
    p my_arg * 2
  end
end
obj = MyClass.new
obj.send(:my_method, 3)
