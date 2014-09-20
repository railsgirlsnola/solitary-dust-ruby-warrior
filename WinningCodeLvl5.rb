
class Player
  def play_turn(warrior)
    if warrior.feel.empty? 
        if @health && warrior.health >= @health && warrior.health == 20
          warrior.walk!
        elsif @health && warrior.health < @health 
          warrior.walk!
        else warrior.health < 20
          warrior.rest!
        end
    elsif warrior.feel.captive?
      warrior.rescue!
    else
      warrior.attack!
    end
    @health = warrior.health
  end
end