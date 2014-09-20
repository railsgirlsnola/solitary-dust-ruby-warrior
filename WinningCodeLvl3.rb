
class Player
  def play_turn(warrior)
    if warrior.feel.empty? && warrior.health > 18
      warrior.walk!
    elsif warrior.feel.empty? && warrior.health <= 18
      warrior.rest!
    else
      warrior.attack!
    end
  end
end