module M1
  def mymethod
    'M1#my_method()'
  end
end

class C
  include M1
end

class D < C; end

p D.ancestors