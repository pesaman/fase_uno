class Cat
  def initialize(name)
    @name = name
    @velocity=0
  end

  def jump
    "Saltando..."
  end

  def self.meow
    "Miau... Miau..."
  end

  def run(num)
    "Corriendo #{@velocity += num} mts..."  
  end
end


Cat.meow

#test
cat_1 = Cat.new("bombo")
cat_2 = Cat.new("misha")
cat_3 = Cat.new("pompeyo")
cat_4 = Cat.new("mika")
cat_5 = Cat.new("grey")

p cat_1.jump == "Saltando..."
p cat_5.jump == "Saltando..."
p Cat.meow == "Miau... Miau..."
p cat_3.run(0) == "Corriendo 0 mts..."
p cat_3.run(20) == "Corriendo 20 mts..."
p cat_3.run(10) == "Corriendo 30 mts..."
p cat_3.run(10) == "Corriendo 40 mts..." 