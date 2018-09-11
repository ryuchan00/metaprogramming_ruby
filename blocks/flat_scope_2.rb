my_var = "成功"
MyClass = Class.new do
  # これでmy_varを表示できる
  puts "クラス定義の中は#{my_var} !"

  def my_method
    puts "... でもここに表示するには"
    # ... でもここに表示するには
  end
end

m = MyClass.new
m.my_method

# Class.newに渡せば、クラスにインスタンスメソッドを
# 定義できる。
