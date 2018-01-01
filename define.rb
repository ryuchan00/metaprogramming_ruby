require 'pry'

module M
  class C
    X = 'ある定数'
    module M2
      p Module.nesting
    end
  end

  p C::X
end

p M::C::X

Y = 'ルートレベルの定数'

module M
  Y = 'Mにある定数'
  p Y
  p ::Y
  binding.pry
end

