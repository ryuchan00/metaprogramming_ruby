def event(description)
  puts "ALERT: #{description}" if yield
end
dir = File.dirname(__FILE__) + '/'
load "#{dir}events.rb"