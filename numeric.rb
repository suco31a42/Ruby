puts "数値のまるめ"
num = 3.333
# 四捨五入
puts num.round 
# 切り下げ
puts num.floor
puts 3.1.floor
# 切り上げ
puts num.ceil
# 切り捨て
puts num.truncate

puts "数値の判定"
# ゼロかどうか
puts 0.zero?
puts 5.zero?
# 奇数かどうか
puts 4.odd?
puts 9.odd?
# 偶数かどうか
puts 4.even?
puts 9.even?
puts "数値クラス"
# 円周率を表す定数
puts Math::PI
# 平方根を求めるクラスメソッド
puts Math.sqrt(4)
puts Math.sqrt(2)
# 整数を扱うIntegerクラス
puts "2".to_i
# 小数点を扱うFloatクラス
puts"2.345".to_f
# 文字列を扱うStringクラス
puts 242.to_s