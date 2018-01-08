class C
  def m1
    def m2; end
  end
end

class D < C; end

obj = D.new
obj.m1

# instance_methodsメソッドは、クラスやモジュールで定義されているインスタンスメソッドの名前を集めて配列にして返します。配列に含まれるのはpublicなメソッドかprotectedなメソッドです。privateなメソッドは含まれません。
# 配列には親クラスやインクルードしているモジュールのメソッドも含まれます。引数にfalseを指定すると、そのクラスやモジュールで定義されているメソッドだけが返ります。
p C.instance_methods(false) # => [:m1, m2]