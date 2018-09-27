class C
  def a_method
    'C#a_method()'
  end

  class << self
    def a_class_method
      'C.a_class_method()'
    end
  end
end

class D < C; end
obj = D.new
p obj.a_method

class << obj
  def a_singleton_method
    'obj#a_singleton_method()'
  end
end

# singleton_classメソッドは、オブジェクトの特異クラスを返します。
# https://ref.xaio.jp/ruby/classes/object/singleton_class
p obj.singleton_class.superclass  # D
p obj.class                       # D
p obj.singleton_methods           # [:a_singleton_method]
p C.singleton_methods             # [:a_class_method]

C.singleton_class                 # => #<Class:C>
D.singleton_class                 # => #<Class:D>
D.singleton_class.superclass      # => #<Class:C>
C.singleton_class.superclass      # => #<Class:Object>

