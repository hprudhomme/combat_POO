class BoardCase
    #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
    attr_accessor :signe, :id
    
    def initialize(signe, id)
      #TO DO : doit régler sa valeur, ainsi que son numéro de case
      @signe = signe
      @id = id
    end
    
  end