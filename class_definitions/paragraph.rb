# どんな文字列も段落になる
paragraph = "any string can be a paragraph"

def paragraph.title?
  self.upcase == self
end

# ここでエラーになる。このindexは一体なにがレシーバーになっているのか
index(paragraph)