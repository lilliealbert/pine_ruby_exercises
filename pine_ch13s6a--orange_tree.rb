class OrangeTree
  
  def initialize
    @tree_height = 1
    @tree_age = 0
  end
  
  def height
    @tree_height
  end
  
  def one_year_passes
    @tree_height += 1
    @tree_age += 1
    
    orange_crop
    
    puts @tree_age
    
    if @tree_age > 20
      puts "The tree died."
      exit
    end
  end
  
  def orange_crop
    if @tree_age < 3
      @orange_count = 0
    elsif (3..10) === @tree_age
      @orange_count = 20 + rand(10)
    elsif (11..20) === @tree_age
      @orange_count = 40 + rand(20)
    end
  end
  
  def count_the_oranges
    @orange_count
  end
  
  def pick_an_orange
    @orange_count -= 1
    if @orange_count < 0
      puts "You can't pick an orange because there aren't any."
    else
      puts "You picked a delicious orange. #{@orange_count} remain."
    end
  end
  
end