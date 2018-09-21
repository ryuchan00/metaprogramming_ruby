# かっさんさんとクイズ解答
def setup(&block)
  @setups << {condition: block}
end

def event(description, &block)
  @events << {:description => description, :condition => block}
end

@setups = []
@events = []
dir = File.dirname(__FILE__) + '/'
load "#{dir}events.rb"

@events.each do |event|
  @setups.each do |setup|
    setup[:condition].call
  end
  puts "ALERT: #{event[:description]}" if event[:condition].call
end
