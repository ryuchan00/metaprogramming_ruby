# 動的ディスパッチ

def explore_array(method, *arguments)
  ['a', 'b', 'c'].send(method, *arguments)
end
