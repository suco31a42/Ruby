s = "/ruby/exam/index.html"
p s.index("/", 2)
p s.index("/", 10)

str = "abcdef"
str[/[cdef]+/] = "ba"
# str[ab(cdef)] = "ba" 文法エラー
p str

# -の両端に文字がある場合は範囲指定(0-2 = 012)、-が片方にだけ文字がある場合はハイフンそのもの(8- = 8,-)
p "0123456789-".delete("0-28-")