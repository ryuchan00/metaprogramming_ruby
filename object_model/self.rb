require 'pry'

class MyClass
  def testing_self
    @var = 10 # selfのインスタンス変数
    my_method # self.my_methodと同じ
    self
    binding.pry
  end

  def my_method
    @var = @var + 1
  end
end

obj = MyClass.new
p obj.testing_self