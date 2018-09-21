class MyClass
  attr_accessor :my_var

  def initialize
    self.my_var = 1
  end
end

c = MyClass.new
p c.my_var

class MyClass2
  @my_var = 1

  def self.read
    puts "self.read"
    @my_var
  end

  def write;
    @my_var = 2;
  end

  def read
    puts "read"
    @my_var
  end
end

obj = MyClass2.new
# クラスのオブジェクトのインスタンス変数
p obj.read # => read
obj.write
p obj.read # => read
# これは MyClass というオブジェクトのインスタンス変数だ。クラスインスタンス変数とも呼ばれる。
p MyClass2.read # => self.read

puts 'クラス変数'

class Object
  @@v = 1
end

class C
  @@v = 2
end

p @@v
