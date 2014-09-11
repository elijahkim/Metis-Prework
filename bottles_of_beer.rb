counter = 99
while counter != 0
  if counter != 1
    puts "#{counter} bottles of beer on the wall"
    puts "#{counter} bottles of beer"
    puts "take one down pass it around"
  else
    puts "#{counter} bottle of beer on the wall"
    puts "#{counter} bottle of beer"
  end
  counter = counter-1
  if counter != 1
    puts "#{counter} bottles of beer on the wall"
  else
    puts "#{counter} bottle of beer on the wall"
  end
  puts
end
