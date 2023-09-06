str = "abc"
p str.upcase
# 今いるディレクトリを表示
p Dir.pwd

path = "/aaa/bbb/ccc.txt"

# ファイル名を取り出す
p File.basename(path)

# ディレクトリパスを取り出す
p File.dirname(path)

# ファイルの拡張子を取り出す
p File.extname(path)

# ファイルとディレクトリパスで分割して配列に格納する
p File.split(path)

# 因数の文字列を統合してファイルパスを作る
p File.join("zzz","eee","ttt.txt")

p "ディレクトリを操作する"
# ディレクトリに移動
p Dir.chdir("../")

p Dir.pwd

p Dir.chdir("./ruby/")

p Dir.pwd

# ディレクトリを作成する
p Dir.mkdir("zzz/")

p Dir.glob("/home/ec2-user/environment/ruby/*")

# ディレクトリを削除する
p Dir.rmdir("zzz/")

p "ファイルを操作する"
# ファイルの一覧を取得する(配列で受け取る)
p Dir.glob("/home/ec2-user/environment/ruby/*")

# ファイルの名前を変える
# p File.rename("aaa.txt", "bbb.txt")

# # ファイルを削除する
# p File.delete("bbb.txt")

p Dir.chdir("/home/ec2-user/environment/ruby/test")
pwd = Dir.pwd
p "現在の位置は#{pwd}です"
files = Dir.glob("#{pwd}/*")
file = files[0]
p "#{file}というファイルが存在しました"
p "このファイルを書き込んでみます"

# "w"は新規書き込みモcode
File.open( file, "w") do |io|
  io.puts "こんにちは"
end
p "書き込みが終わりました"

p "中身を読み込んで表示します"

# "r"は読み出しモード
File.open(file, "r") do |io|
  p "中身==>" + io.read
end

# "a"は追加書き込みモード