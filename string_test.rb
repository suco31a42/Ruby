s = "/ruby/exam/index.html"
p s.index("/", 2)
p s.index("/", 10)

str = "abcdef"
str[/[cdef]+/] = "ba"
# str[ab(cdef)] = "ba" 文法エラー
p str

# -の両端に文字がある場合は範囲指定(0-2 = 012)、-が片方にだけ文字がある場合はハイフンそのもの(8- = 8,-)
p "0123456789-".delete("0-28-")
p "foo\nbar\nbaz".split(/\n/, 2)
# chompの指定を空にすると\n, \r, \nr を全て指定して削除する
str_chomp = "abc\r\n\r\n".chomp('')
p str_chomp
# chopは末尾一文字を取り除く。ただし"\r\n"は改行コード一文字と認識する
str_chop = "abc\r\n".chop

a = "asdf"
b = "hello"
b = a
# !が付くと反転した文字列を破壊的に上書きする
b.reverse! 
p b
# "ber" * (2 ** 2)として先に数値が計算される
p "ber" * 2 ** 2