# an_object = Object.new
#
# class << an_object
#   # あなたのコードをここに
# end

obj = Object.new

singleton_class = class << obj
  self
end

p singleton_class.class
p "abc".singleton_class

def obj.my_singleton_method
end

p singleton_class.instance_methods.grep(/my/)
