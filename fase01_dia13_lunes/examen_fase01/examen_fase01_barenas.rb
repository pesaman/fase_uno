# 1.Clases
#Clase CreditCard
class CreditCard
  attr_accessor :name, :number, :expiration, :cvc, :status
  def initialize (name, number, expiration, cvc, status)
    @name = name 
    @number = number
    @expiration = expiration
    @cvc = cvc 
    @status = status
  end
end

#Cinco instancias de CreditCard
card1 = CreditCard.new('Amex', 2345673444, "12/15", 2345, [234, 567, 456, 567, 344])
card2 = CreditCard.new('ScotiaBank', 2345673744, "12/16", 2845, [234, 345, 456, 567, 344])
card3 = CreditCard.new('Bancomer', 2345673444, "12/15", 2645, [234, 345, 456, 567, 344])
card4 = CreditCard.new('Serfin', 2345473454, "12/20", 1345, [234, 345, 456, 567, 344])
card5 = CreditCard.new('BanCoppel', 2345373464, "12/18", 2445, [567, 345, 456, 567, 344])


#Array con cinco objetos de tarjetas de crédito
cards = [card1, card2, card3, card4, card5]

#tests 
cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

#método para mostrar datos de tarjetas
def print_table(array)
  #cards = [card1, card2, card3, card4, card5]
  puts "|     name     |     number     |  expiration  |      cvc      |           status          |"
  puts "--------------------------------------------------------------------------------------------"
  array.each do |card|
    
    puts "|   #{card.name.ljust(11)}|   #{card.number}   |     #{card.expiration}    |     #{card.cvc}      |  #{card.status}|  "
  end
end

print_table(cards)
=begin
|     name     |     number     |    expiration  |      cvc      |           status          |
----------------------------------------------------------------------------------------------
|   Amex       |    2345673444  |      12/15     |      2345     | [234, 567, 456, 567, 344] |  
|   ScotiaBank |    2345673744  |      12/16     |      2845     | [234, 345, 456, 567, 344] |  
|   Bancomer   |    2345673444  |      12/15     |      2645     | [234, 345, 456, 567, 344] |  
|   Serfin     |    2345473454  |      12/20     |      1345     | [234, 345, 456, 567, 344] |  
|   BanCoppel  |    2345373464  |      12/18     |      2445     | [567, 345, 456, 567, 344] |   
=end



#----------------------------------------------------------------------------------------------------


# 2. Herencia
#Athlete class
class Athlete
  
  attr_accessor :speed, :total_time, :speed_record, :total_distance  
  
  def initialize
    @speed = 0
    @total_time = 0
    @speed_record  = 0
    @total_distance = 0
    
  end  


  #método para validar tiempo
  def total_time
    @total_time
  end

  #método para hacer ejercicio
  def new_workout (distance, time)
    @total_distance = distance 
    @total_time = time
    @speed_record = distance.to_f / time.to_f
  end
  
  #método para obtener velocidad del atleta
   def velocity_athlete
    @speed_record.to_f = @total_distance / @total_time
   end
  

end

#Runner class
class Runner < Athlete
  attr_accessor :run
  def run
    puts "Ran #{@total_distance} meters, time: #{@total_time} seconds, speed: #{@speed_record.round(2)} m/s"   
  end

end


#Swimmer class
class Swimmer < Athlete
  
  attr_accessor :swim
  
  def initialize(distance, time)
     @total_distance = distance
     @total_time = time
  
  end

  def swin
   puts "Swam #{@total_distance} meters, time: #{@total_time} seconds, speed: #{@speed_record} m/s"  
  end
end

#Cyclist class
 
class Cyclist < Athlete
  
  attr_accessor :ride_bike
  
  def initialize(distance, time)
    @total_distance = distance
    @total_time = time
    @ride_bike
  end

end


#tests

#instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
  #¿qué tipo de atleta es?
  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

#test for runner

#test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
#test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
runner.new_workout(20, 7) 
#test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

#test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"
