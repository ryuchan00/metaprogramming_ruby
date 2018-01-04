my_var = "成功"

MyClass = Class.new do
  puts "クラス定義の中は #{my_var} !"

  define_method :my_method do
    puts "メソッド定義のなかも #{my_var} !"
  end
end

puts MyClass.new.my_method