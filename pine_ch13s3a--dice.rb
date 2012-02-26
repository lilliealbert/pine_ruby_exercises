class Die
  
  def initialize
    roll
  end
  
  def roll
    @number_showing = 1 + rand(6)
  end
  
  def showing
    @number_showing
  end

  def cheat input
    if (1..6) === input.to_i  
      @number_showing = input
    else
      puts "This die only has six sides. We're not playing D&D here."
    end
  end
  
end