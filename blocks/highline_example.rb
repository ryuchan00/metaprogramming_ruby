require 'highline'

hl = HighLine.new
friends = hl.ask("友達を入力してください", lambda { |s| s.split(',') })
puts "友達一覧：#{friends.inspect}"

name = hl.ask("名前は?", lambda { |s| s.capitalize })
puts "Hello, #{name}"
