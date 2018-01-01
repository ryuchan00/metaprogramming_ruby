require 'pry'

module StringExtensions
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, '')
    end
  end
end

binding.pry

# How to
# using StringExtensions
# "my *1st* refinement!".to_alphanumeric # => "my 1st refinement"