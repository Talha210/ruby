ALL_UNITS = []

class Units
  attr_accessor :name, :hp, :mp, :spped, :ct,  :maxhp, :maxmp, :atk, :status # getter and setter method
  def initialize(name) # contstrutor method
    self.hp = 50 # default values
    self.mp = 10
    self.atk = 10
    self.speed = 5
    self.ct = 0
    self.maxhp = 50
    self.maxmp = 10
    self.status = 'aive'
    ALL_UNITS << self
  end

  def attack(target) # method just function belong to object
    puts "#{self.name} attacked #{target.name}"
  end
end


class Squire < Unit # inheritance one property

  def initialize(name)
    super(name)
end
# we can specify unique methods
#or overwite

  def throw_stone(target)
    puts "#{self.name} has fallen"
  end
 end


 class Wizard < Unit
   def initialize(name)
     super(name) # the functions that calls the Superclass's contstrutor method
     self.hp -= 10
     self.speed -= 2
     self.mp += 30
   end

   def cast()
     puts "#{self.name} casted magic"
   end
 end


 class Knight < Units
   def initialize(name)
     super(name)
     self.hp += 10
     self.atk += 5
     self.mp -= 5
   end


def battle_is_over? # boolean function /method the "?" is purely for readability. these methods only retrn true or false
  felled = []
  ALL_UNITS.each do |units|
    if units.status == 'alive'
      felled << false
    else
      felled << true
    end
  end
  if felled.any?(false)
    return false # it is important to remember to return a t/f values
  end
end

def take_turn(u)
  puts "#{u.name}'s turn! What will you do?"
  puts "1 Attack\n2 - Special\n3 - Wait"
  choice = gets.chomp.to_i
  case choice # cleaner syntax for an 
  when 1
    puts "#{u.name} attacked"
    u.ct -= 25
  when 2
    puts "#{u.name} used a Special move1"
    u.ct -= 50
  when 3
    puts "Waiting ..."
    u.ct -= 10
  else
    puts "INVALID SELECTION"
  end
end

   def rend_armor()
     "#{self.name} rend armor! Everything is now rent"
   end
 end

def start_battle
  battle_time = true
  while battle_time
    if battle_is_over?
      break # breaks out of loop
    end
    ALL_UNITS.each do |unit|
      unit.ct += unit.speed
      sleep 0.1 3 #sleep will stall execution of the program fo n seconds
      puts "#{unit.name} ......... #{}"
      if unit.ct >= 100
        unit.ct = 100
        unit.take_turn(unit)
        unit.ct = 0
      end
    end
  end
end



roy = Warrior.new('Roy') # object.new is how we run a class's contstrutor method
marth = Warrior.new('Marth')
robin = Mage.new('Robin')

start_battle($ALL_FIGHTERS)
