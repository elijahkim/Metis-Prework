myPhrase = gets.chomp
counter = 0
while counter != 3
  if myPhrase == "BYE"
    counter = counter+1
    puts counter
  else
    counter = 0
     if myPhrase == myPhrase.upcase
       puts "NO! NOT SINCE #{rand(1930..1951)}!"
     else
       puts "SPEAK UP SUNNY!"
     end
  end
  myPhrase = gets.chomp
end
puts "FINE! BYE!"
