class Board
    #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
    attr_accessor :A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3
    @tab = []
    def initialize(A1, A2, A3, B1, B2, B3, C1, C2, C3)
      #TO DO :
      #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
      @tab << @A1 = BoardCase.new(" ","A1")
      @tab << @A2 = BoardCase.new(" ","A2")
      @tab << @A3 = BoardCase.new(" ","A3")
      @tab << @B1 = BoardCase.new(" ","B1")
      @tab << @B2 = BoardCase.new(" ","B2")
      @tab << @B3 = BoardCase.new(" ","B3")
      @tab << @C1 = BoardCase.new(" ","C1")
      @tab << @C2 = BoardCase.new(" ","C2")
      @tab << @C3 = BoardCase.new(" ","C3")

      #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    end
  
    def play_turn(player)
      #TO DO : une méthode qui :
      #1) demande au bon joueur ce qu'il souhaite faire
      puts "Choisissez une case"
	    @case_choosen = gets.chomp
      #2) change la BoardCase jouée en fonction de la valeur du joueur (x ou O)
      if @case_choosen == "A1"
        @A1.signe = player.signe
      elsif @case_choosen == "A2"
        @A2.signe = player.signe
      elsif @case_choosen == "A3"
        @A3.signe = player.signe
      elsif @case_choosen == "B1"
        @B1.signe = player.signe
      elsif @case_choosen == "B2"
        @B2.signe = player.signe
      elsif @case_choosen == "B3"
        @B3.signe = player.signe
      elsif @case_choosen == "C1"
        @C1.signe = player.signe
      elsif @case_choosen == "C2"
        @C2.signe = player.signe
      elsif @case_choosen == "C3"
        @C3.signe = player.signe
      end
      player.statut *= 1
    end
  
    def victory?
      #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
      if @A1.signe == " " || @A2.signe == " " || @A3.signe == " " || @B1.signe == " " || @B2.signe == " " || @B3.signe == " " || @C1.signe == " " || @C2.signe == " " || @C3.signe == " "
        puts "tour suivant"
      elsif (@A1.signe == "x" && @A2.signe == "x" && @A3.signe == "x") || (@A1.signe == "x" && @B1.signe == "x" && @C1.signe == "x") || (@A3.signe == "x" && @B3.signe == "x" && @C3.signe == "x") || (@C1.signe == "x" && @C2.signe == "x" && @C3.signe == "x") || (@A1.signe == "x" && @B2.signe == "x" && @C3.signe == "x") || (@A3.signe == "x" && @B2.signe == "x" && @C1.signe == "x")
        puts "game fini, joueur 1 a gagné"
      elsif (@A1.signe == "o" && @A2.signe == "o" && @A3.signe == "o") || (@A1.signe == "o" && @B1.signe == "o" && @C1.signe == "o") || (@A3.signe == "o" && @B3.signe == "o" && @C3.signe == "o") || (@C1.signe == "o" && @C2.signe == "o" && @C3.signe == "o") || (@A1.signe == "o" && @B2.signe == "o" && @C3.signe == "o") || (@A3.signe == "o" && @B2.signe == "o" && @C1.signe == "o")
        puts "game fini, joueur 2 a gagné"
      else
        puts "match nul"
        return true
      end
    end
end