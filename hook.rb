# 6,7.1 その他のフックメソッド
module M1
  def self.included(othermod)
    puts "M1 は#{othermod}にインクルードされた"
  end

  def self.prepended(othermod)
    puts "M1 は#{othermod}にプリペンドされた"
  end
end

class C
  include M1
  prepend M1
end

module M
  def self.method_undefined(name)
    puts "method Mxxxxx\##{name} was undefined"
  end

  def foo
  end
  def bar
  end

  undef_method :foo
  undef bar

  def my_method
  end

  def self.method_removed(method)
    puts "削除されたメソッド M##{method}"
  end

  remove_method :my_method
end

class C
  include M
end


