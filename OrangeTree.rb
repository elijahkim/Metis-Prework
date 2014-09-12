class OrangeTree

  def initialize
    puts "you have planted a tree"
    @age = 0
    @height = 0
    @numOranges =0
  end

  def getHeight
    return "your tree is #{@height}ft tall"
  end

  def orangeCount
    return "your tree has #{@numOranges} oranges"
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
    return "Your tree's age is #{@age}"
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












