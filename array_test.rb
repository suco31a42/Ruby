a = %w(a b c d e f)
p a[2...-1]# 末尾は含まない
p a[2..-1]# 末尾を含む

ary = %w(a b c d e)
ary.push(ary.shift)
ary.unshift(nil)
p ary

order = ['apple']