class MyClass
  def greet
    "hello"
  end
end

p MyClass.new.greet # => "hello"

# この場合は、greet をオーバーライドするモジュールをインクルードするだけでは、メソッドの
# 周囲に機能を追加することはできない。
