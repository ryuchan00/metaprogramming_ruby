class Paragraph
  def initialize(text)
    @text = text
  end

  def title?; @text.upcate == @text; end
  def reverse; @text.reverse; end
end