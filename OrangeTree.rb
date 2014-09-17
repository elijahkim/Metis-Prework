class OrangeTree

  def initialize
    puts "you have planted a tree"
    @age = 0
    @height = 0
    @numOranges =0
  end

  def getHeight
    return @height
  end

  def orangeCount
    return @numOranges
  end

  def pickOrange
   if @numOranges > 0
     puts "you took an orange"
     @numOranges -= 1
     puts "there are #{@numOranges} left"
   else
     puts "there aren't any oranges to pick"
   end
  end

  def getAge
    return @age
  end

  def oneYearPasses
    @height += rand(2)+1
    @age += 1
    if @age <= 4
      @numOranges = 0
    elsif @age.between?(5,10)
      @numOranges = rand(5)+3
    elsif @age.between?(11,20)
      @numOranges = rand(10)+10
    elsif @age > 20
      @numOranges = rand(10)+20
    end
  end
end

tree = OrangeTree.new

def interaction(tree)
  puts "what would you like to do"
  input = gets.chomp
  if input == "next year"
    tree.oneYearPasses
    puts "one year has passed"
  elsif input == "pick orange"
    tree.pickOrange
  elsif input == "get age"
    puts "your tree is #{tree.getAge} years old"
  elsif input == "count oranges"
    puts "your tree has #{tree.orangeCount} oranges"
  elsif input == "get height"
    puts "your tree is #{tree.getHeight} ft tall"
  else
    puts "Your command is unknown. Please try again."
    instructions
  end
end

def instructions
  puts "do you need to hear the options"
  puts "type yes or press enter to continue"
  options = gets.chomp
  if options == "yes"
    puts "There is:"
    puts "count oranges"
    puts "get age"
    puts "get height"
    puts "pick orange"
    puts "next year"
  end
end

while tree.getAge <= 50
  interaction(tree)
end

puts "your tree has reached max level"

