class Game

    attr_accessor :grille
    
    def initialize(grille_to_save)
        @grille = grille_to_save
    end

    def affichage
        i = 0
        j = 0
        print "-------\n"
        while i < 3
            while j < 3
                print "|"
                print "#{@grille[i][j]}"
                j += 1
            end
            print "|\n"
            print "-------\n"
            i += 1
            j = 0
        end
    end
end