class Car
  attr_accessor :color, :wheel_count, :started

  def initialize
    @started = false
  end

  def start
    if @started
      "BZZT! Nice try, though"
    else
      @started = true
      "Starting up!"
    end
  end

  def wheel_count
    "This sweet ride is sitting on #{@wheel_count} wheels"
  end

  def report_color
    "I am #{@color}"
  end

  def horn
    "BEEEEEP!"
  end

  def drive(distance)
    "I'm driving #{distance} miles"
  end
end

my_car = Car.new

puts my_car.horn
puts my_car.drive(12)

my_car.color = 'purple'
puts my_car.report_color

my_car.wheel_count = 18
puts my_car.wheel_count

puts my_car.start
puts my_car.start
