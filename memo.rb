require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する) その他(終了します)" 

memo_type = gets.to_i
if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  newfile=gets.chomp+ ".csv"
  test = CSV.open(newfile,'w')
  puts "メモしたい内容を記入してください完了したらCtrl + Dを推します"
  while line = gets
    test.puts [line.chomp]
  end
  test.close

elsif memo_type == 2
  puts "拡張子を除いたファイル名を入力してください"
  search_file = gets.chomp + ".csv"
  test = CSV.open(search_file,'a')
  puts "メモしたい内容を記入してください完了したらCtrl + Dを推します"
  while line = gets
    test.puts [line.chomp]
  end  
  test.close

else
  puts "終了します"
end