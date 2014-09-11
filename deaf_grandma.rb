myPhrase = gets.chomp
while myPhrase != "BYE"
  if myPhrase == myPhrase.upcase
    puts "NO! NOT SINCE #{rand(1930..1951)}!"
  else
    puts "SPEAK UP SUNNY!"
  end
  myPhrase = gets.chomp
end
puts "BYE!"
