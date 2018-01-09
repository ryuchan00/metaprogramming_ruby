# 特異クラスの参照を取得したいために、スコープの外にselfを返して見る

obj = Object.new

singleton_class = class << obj
  self
end

p singleton_class.class # => Class
