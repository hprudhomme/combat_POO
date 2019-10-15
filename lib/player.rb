require 'pry'

class Player
    attr_accessor :name, :life_points

    def initialize(name_to_save)
        @name = name_to_save
        @life_points = 10
    end

    def show_state
        puts "#{self.name} a #{self.life_points} points de vie"
    end

    def gets_damage(x)
        @life_points -= x
    end

    def attacks(player2)
        puts "#{self.name} attaque #{player2.name}"
        dmg = compute_damage
        player2.gets_damage(dmg)
        puts "#{self.name} enlève #{dmg} à #{player2.name}"
        if player2.life_points <= 0
            puts "#{player2.name} est mort"
        end
    end

    def compute_damage
        return rand(1..6)
    end
end