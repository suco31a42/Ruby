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

ar_i.each_with_index do |x, idx| 
   p "インデックス#{idx}番号は#{x}です。" 
end

p "配列を繰り返しいて、中身を置き換える"
ar_i.map! do |v|
   v + "123" 
end
p ar_i

ar_s = %w"apple banana orange apple"
ar_s.select! do |v|
   v == "apple" 
end
p ar_s

ar_s.delete("apple")
p ar_s