class Warrior
  attr_accessor :name, :hp
  def initialize(name)
    @name = name
    self.hp = 100
    self.mp = 10
    self.atk = 30
    self.magic = 5
  end
  def attack(target)
    @target.hp -= self.atk
    puts "#{@name} attacked #{taget.name}"
    if target.hp < 1
      puts "#{target.name} is ded"
    end
  end
end

class Mage
  attr_accessor :name, :hp, :magic, :atk,
  def initialize(name)
    @name = name
    self.hp = 60
    self.mp = 100
    self.atk = 10
    self.magic = 40
  end

def cast_spell(target)
  target.hp -= self.magic
  puts "#{@name} casted Firaga on #{target.name}"
  if target.hp < 1
    target.statuts = 'fallen'
    put "#{target.name} has burned!"
  end
 end
end

def take_

class archer



def start_battle(p1, p2)
  puts "Battle begins!"
  $battle_time = true
  while $battle_time # truthy
    if p1.status == 'fallen' || p2.status == 'fallen'
      puts "The battle is over"
      break
    end
  turn_count += 1
  if turn_count % 2 == 0
    take_turn(p1, p2)
  else
    take_turn(p1, p2)
    end
  end
end
