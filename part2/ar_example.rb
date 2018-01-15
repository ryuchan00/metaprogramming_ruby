#  Rails アプリケーションでは、コネクションのことを気にする必要はない。
# アプリケーションが アダプタとデータベース名を設定ファイルから読み込んで、自動的に establish_connection を呼び 出してくれるからだ。

require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :databese => "dbfile"