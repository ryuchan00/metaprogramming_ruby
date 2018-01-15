# これはPOSSIBLE_VERBSが定義されていないため動かない
# 動的メソッド

POSSIBLE_VERBS.each do |m|
  define_method m do |path, *args, &b|
    r[path].send(m, *args, &b)
  end
end
