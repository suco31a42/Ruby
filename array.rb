p "配列の作り方"
ar = []
ar[0] = "value"
p ar
# %wを先頭に置くと配列を作れる(よく使われる)
ar_w = %w"aaa vvv ddd"
p ar_w

ar_s = "sss bbb rrr".split
p ar_s

p "インデックスで操作"
p ar_w[1]
p ar_w[1,2]
p ar_w[0..2]

p "配列の繰り返しで中身を捜査"
ar_i = %w"aa vv cc ff"
ar_i.each do |v|
    p v
end

ar_i.each_with_index do |v, idx|
   p "インデックス#{idx}番号は#{v}です。"
end

p "配列を繰り返して、中身を置き換える"
ar_i.map! do |v|
   v + "123"
end
p ar_i

# 配列の要素を判定して条件に一致したものを抽出する
ar_s = %w"apple banana orange apple"
ar_s.select! do |v|
   v == "apple"
end
p ar_s

ar_s.delete("apple")
p ar_s

ar2 = %w"cherriy banana apple orange"
# ABC順に並び替える
p ar2.sort

# 左右反転
p ar2.reverse

# 特殊な評価順で並び替え
ar2.sort_by! do |v|
   v.size
end
p ar2

ar3 = %w"cherriy banana apple orange"
# 最後尾の要素を取り出す
v = ar3.pop
p v + "を取り出した"
p ar3

# 先頭の要素を取り出す
x = ar3.shift
p x + "を取り出した"
p ar3
# 最後尾に要素を追加する
y = ar3.push("coconattu")
p ar3

# 先頭に追加する
z = ar3.unshift("tomato")
p ar3

# そのまま連結
p ar2 + ar3

# 最初の配列から右の配列と重なった配列を消去する
p ar2 - ar3

# 末尾に追加(pushと同じ)
p ar2 << "banana"

ar4 = %w"1 3 5 7 10"

# 最大値を取り出す
p ar4.max 

# 最小値を取り出す
p ar4.min

# 合計を算出する
p [1,2,2,6].sum

# nilを削除する
p [1,2,3,nil,nil].compact

# 多次元配列を一次元配列にする
p [ [1,2], [4,1], [2] ].flatten

# 配列内から重複を削除する
p [ 1,2,2,4,4,4].uniq