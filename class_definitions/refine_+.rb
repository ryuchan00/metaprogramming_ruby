module FixnumWrapper
  alias_method :add, :+

  def +(v)
    r = self.add v
    r.add 1
  end
end

Fixnum.class_eval do
  prepend FixnumWrapper
end

p 1 + 1
p 1 + 2

class Fixnum
  alias_method :add, :+

  def +(v)
    r = self.add v
    r.add 1
  end
end

p 1 + 1
p 1 + 2

eval
