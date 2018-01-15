def explore_array(method)
  code = "%w['a', 'b', 'c'].#{method}"
  puts "Ecaluating: #{code}"
  eval code
end

loop { p explore_array(gets.chomp) }