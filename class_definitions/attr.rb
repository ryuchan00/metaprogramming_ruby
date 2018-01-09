class MyClass
  def my_attribute=(value)
    @my_attribute = value
  end

  def my_attribute
    @my_attribute
  end
end

obj = MyClass.new
obj.my_attribute = 'x'
p obj.my_attribute

# これらは退屈な書き方なので、下のような書き方にする

class MyClass2
  attr_accessor :my_attribute
end

obj2 = MyClass2.new
obj2.my_attribute = 'x'
p obj2.my_attribute
