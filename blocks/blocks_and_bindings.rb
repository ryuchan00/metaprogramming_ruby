def my_method
  x = "GoodBye"
  yield("cruel")
end

x = "Hello"
p my_method {|y| "#{x}, #{y} world"} # => "Hello, cruel world"