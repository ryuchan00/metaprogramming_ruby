class Fixnum
  alias_method :old_plus, :+

  def +(value)
    self.old_plus(value)
  end
end

