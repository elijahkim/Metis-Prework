myList = []
myWord = gets.chomp
while myWord!=""
  myList.push myWord
  puts
  puts "you added #{myWord} to the array"
  puts "your array is now"
  puts myList.to_s
  puts
  myWord = gets.chomp
end
puts "your array is"
puts myList.to_s
