s1, s2 = "abc", "def"

s1.instance_eval do
  # selfレシーバに対してreverseする
  def swoosh!;
    reverse;
  end
end

p s1.swoosh! # "cba"
p s2.respond_to?(:swoosh!) # false
