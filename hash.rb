p "キーと値をセットにするのがハッシュ"
hs = [ "apple" => "りんご"]
p hs
# キーと値は文字列でもシンボルでも数値でも可
hs2 = { [1,2,3] => "りんご"}
p hs2

hs3 = {:mozi => "文字"}
p hs3

# {:aaa => 100 }と同じ、キーをシンボルを使ったハッシュは省略できる
hs4 = { aaa: 100 }
p hs4

# ハッシュもシンボルも重複を許さないので相性が良い
hs5 = { aaa: :bbb }
p hs5

hs6 = {apple: 100, banana: 150, cherry: 500}

# キーの存在確認
p hs6.has_key?(:apple)

# 値の存在確認
p hs6.has_value?(150)

# キーだけを取り出す
p hs6.keys

# 値だけを取り出す
p hs6.values

hs6.each do |k,v|
  p k
  p "===>" + v.to_s
end

# ハッシュの要素を判定して条件に一致したものを抽出する
hs6.select! do |k,v|
  v < 200
end
p hs6

# ハッシュの要素を判定して条件に一致したものを除外する
hs6.reject! do |k,v|
  v > 100
end
p hs6

