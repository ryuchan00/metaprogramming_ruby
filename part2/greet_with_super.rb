module Greetings
  def greet
    "hello"
  end
end

class MyClass
  include Greetings
end

p MyClass.new.greet # => "hello"

# greet メソッドの周囲に機能を追加するエイリアスを使うのではなく、別のモジュールに
# greet を定義して、Greetings モジュールをインクルードすることができる。

module EnthusiasticGreetings
  include  Greetings

  def greet
    "hey, #{super}!"
  end
end

class MyClass2
  include EnthusiasticGreetings
end

p MyClass2.ancestors[0..2] # => [MyClass, EnthusiasticGreetings, Greetings]
p MyClass2.new.greet # => "Hey, hello!"

# 最近のバージョンの ActiveRecord::Validations は、alias_method_ chain よりも通常のオーバーライドのほうがシンプルであることを認めている。
