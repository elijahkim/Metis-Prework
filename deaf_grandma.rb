counter = 0
while counter != 3
  myPhrase = gets.chomp
  if myPhrase == "BYE"
    counter += 1
  else
    counter = 0
     if myPhrase == myPhrase.upcase
       puts "NO! NOT SINCE #{rand(1930..1950)}!"
     else
       puts "SPEAK UP SUNNY!"
     end
  end
end
puts "FINE! BYE!"
