a = %w(a b c d e )
p a[2...-1]# 末尾は含まない
p a[2..-1]
p a[2..3]# 末尾を含む

ary = %w(a b c d e)
ary.push(ary.shift)
ary.unshift(nil)
p ary

order = ['apple']



x = %w"1 2 3 4 5"
y = %w(3 4 5 6)
p x
p y

p (x | y) - (x & y)