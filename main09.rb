class Employee

  def prepare(bike)
    bike.prepare
  end
  
end

class Bike

  def prepare
    raise 'Uhh, boss, I dunno how to do that.'
  end

end

class BmxBike

  def prepare
    self.clean
  end

  private def clean
    puts 'Cleaning...'
  end

end

class RoadBike
  
  def prepare
    self.lubricate_gears
  end

  private def lubricate_gears
    puts 'Lubricating gears...'
  end

end

class MountainBike

  def prepare
    self.adjust_suspension
  end

  private def adjust_suspension
    puts 'Adjusting suspension...'
  end

end

class Tricycle

  def prepare
    self.adjust_seat
  end

  private def adjust_seat
    puts 'Adjusting seat...'
  end

end

bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bikes.each do |bike|
  employee.prepare(bike)
  
end