class OrangeTree

  def initialize
    puts "you have planted a tree"
    @age = 0
    @height = 0
    @numOranges =0
  end

  def height
    puts "your tree is #{height}ft tall"
  end

  def orangeCount
    puts "your tree has #{numOranges} oranges"
  end

  def pickOrange
   if numOranges > 0
     puts "you took an orange"
     numOranges -= 1
     puts "there are #{numOranges} left"
   else
     put "there aren't any oranges to pick"
   end
  end

  def oneYearPasses
    height += rand(2)+1
    age += 1
    if age <= 4
      numOranges = 0
    elsif age (5..10)
      numOranges = rand(5)+3
    elsif age (11..20)
      numOranges = rand(10)+10
    elsif age > 20
      numOranges = rand(10)+20
    end
    if age >= 50
      puts "your tree has faded"
      exit
    end
  end
end

tree = OrangeTree.new
tree.height
tree.orangeCount












