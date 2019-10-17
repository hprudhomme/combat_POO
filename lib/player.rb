require 'pry'

class Player

	attr_reader :name, :value, : statut
	
    def initialize(name_to_save, value_to_save, statut_to_save)
		@name = name_to_save
		@value = value_to_save
		@statut = statut_to_save
    end
end
