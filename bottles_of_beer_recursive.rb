


def bottles amt
  puts "#{amt} of beer on the wall"
  puts "#{amt} of beer!"
  puts "take one down, pass it around"
  puts "#{amt-1} bottles of beer on the wall!"
  puts
  if amt>0
     bottles (amt-1)
  end
end

bottles gets.chomp.to_i


