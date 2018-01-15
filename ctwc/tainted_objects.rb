# echo "x = 1" | ruby ctwc/tainted_objects.rb
# ユーザー入力を読み込み
# user_input = "User input: #{gets()}"
# puts user_input.tainted?


# セーフレベルを設定
$SAFE = 1
user_input = "User input: #{gets()}"
eval user_input
