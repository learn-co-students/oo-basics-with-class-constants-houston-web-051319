require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  BRANDS = [ ]
  def initialize(brand)
    @brand = brand
    if BRANDS.include?(brand)
      BRANDS
    else 
      BRANDS << brand
    end
  end
  def brands
    BRANDS 
  end
  
  def brand=(brand)
    @brand = brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
runner = Shoe.new("Uggs")
#puts runner.brands
#puts runner.
#binding.pry