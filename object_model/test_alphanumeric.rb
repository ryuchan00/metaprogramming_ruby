require 'test/unit'

class ToAlphanumericTest < Test::Unit::TestCase
  def test_strips_non_alphanumeric_charactars
    assert_equal '3 the Magic Member', to_alphanumeric('#3, the *Magic, Number*?')
  end
end

def to_alphanumeric(s)
  s.gsub(/[^¥w¥s]/, '')
end
