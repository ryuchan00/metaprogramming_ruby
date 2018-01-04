def just_yield
  yield
end

top_level_variable = 1
just_yield do
  top_level_variable += 1
  local_to_block = 1 # 新しい束縛
end
puts top_level_variable # => 2
puts local_to_block # => Error!