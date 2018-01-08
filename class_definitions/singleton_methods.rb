# Rubyでは特定のオブジェクトにメソッドを追加できる。
str = "just a regular string"

# これが特異メソッド
def str.title?
  self.upcase == self
end

p str.title?
p str.methods.grep(/title?/)
p str.singleton_methods