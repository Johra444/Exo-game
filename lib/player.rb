require "pry"



class Player
    attr_accessor :name, :life_points
    
    #initialize of the player, they start with 10hp
    def initialize(name)
      @name = name
      @life_points = 10
   end

   #In the case we want to know how many hp a player has 
   def show_state
     "#{@name} a #{@life_points} points de vie"
   end

   #To deal damages, then puts a sentence if the player die of these damages
   def gets_damage(damages)
   @life_points = @life_points - damages
     if @life_points <= 0
       puts "#{@name} est mort"
     end
    end 
    
    #To make a player attacks another player (or himself but it's weird)
    def attacks(player_obj)
        dammage = compute_dammage
        player_obj.life_points -= dammage
        puts "\n#{name} inflige #{dammage} points de dommages à #{player_obj.name}  "
        puts "\n#{player_obj.name} est mort !" if player_obj.life_points <= 0
      end
    
    def compute_dammage
        # Generates random dammage
        # Returns an integer
        rand(1..6)
      end
    
end

binding.pry
puts "end of file"
