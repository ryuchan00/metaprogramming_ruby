class String
  def to_alphanumeric(s)
    s.gsub(/[^¥w¥s]/, '')
  end
end
