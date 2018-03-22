class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update(trainer_id: current_trainer.id)
		@pokemon.save
		redirect_to '/'
	end

	def index
		@pokemons = Pokemon.all
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		if @pokemon.health <= 0
			@pokemon.destroy
		else
			@pokemon.save
		end
		redirect_to trainer_path(@pokemon.trainer_id)
	end

	def new
		@pokemon = Pokemon.new
	end

	def find
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.update(level: 1, health: 100, trainer_id: current_trainer.id)
		if @pokemon.save
			redirect_to current_trainer
		else
			redirect_to new_path
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end

	private
	def pokemon_params
		params.require(:pokemon).permit(:name, :ndex)
	end
end
