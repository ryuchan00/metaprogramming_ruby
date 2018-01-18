# nilガード

# a がnilかfalseなら、 || の左辺を戻す
# そうでなければ、右辺を戻す
a ||= "a"
p a # => a
a ||= "b"
p a # => a