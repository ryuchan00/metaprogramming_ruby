# これは良くない例

# class Paragraph
#   def initialize(text)
#     @text = text
#   end
#
#   def title?
#     @text.upcase == @text
#   end
#
#   def reverse
#     @text.reverse
#   end
#
#   def upcase
#     @text.upcase
#   end
#
#   def index(paragraph)
#     add_to_index(paragraph) if paragraph.title?
#   end
# end

# どんな文字列も段落になる
paragraph = "any string can be a paragraph"

def paragraph.title?
  self.upcase == self
end

p paragraph.title?
paragraph.upcase!
p paragraph.title?
# p index(paragraph)
