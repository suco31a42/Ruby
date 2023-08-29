num = 100
# シングルクォーテーションは内部の式を展開しない
puts '答えは#{num}'
# ダブルクォーテーションは内部の式を展開してくれる
puts "答えは#{num}"
puts "答えは#{4*2}!"
# ヒアドキュメント(長い文章に変数に格納する)
puts hensu = 
<<FIN
ここから
１
２
３
ここまで
FIN

puts "文字列の演算子"
# 文字列を乗算で増やす
puts "abc" * 4
# 文字列を足す
puts "avc" + "iue"
# スペースを開ける
puts "%30s" % "abc"
# 左の文字列に右の文字列を付け加える
puts "abc" << "xyz"
# 文字列を検索する(正規表現で使う) 
puts "aaa@aaa.com" =~ /@/

puts "文字列の長さを求める"
puts "qwertuyi".size
puts "12345676".length
# 文字列のインデックス操作
str = "abcde"
puts str[2]
puts str[2] = "1"
puts str[0..2]
puts str[0,3]
puts "文字列の変換・置き換え"
puts str2 = "ababab"
# 最初に該当した文字列だけ置き換える
puts str2.sub(/ab/, "xy")
# 全ての文字列から該当した文字列を全て置き換える
puts str2.gsub(/ab/, "xy")
# !をつけると破壊的メソッド(元の変数が変更される)になる
puts "文字列の検索"
puts "abcds".index("bc")
# 指定文字の削除(一文字ずつ検索して削除する)
puts "abcde".delete("bc")
# 文字列の行末の削除
puts "avcde".chop

puts "型変換：文字列の分割、統合"
# 文字列の分割
puts "aa bb vv".split
puts "aa,bb,vv".split(",")
# 文字列の統合
puts ar = ["aa", "bb", "cc"]
puts ar.join
puts ar.join(",")
# 小文字→大文字
puts "avc".upcase
# 大文字→小文字
puts "AVC".downcase
# 左右反転
puts "avc".reverse
# 指定した文字列の切り取り
puts "avcde".slice(2..3)
# スペースの除去
puts " abv ".strip


