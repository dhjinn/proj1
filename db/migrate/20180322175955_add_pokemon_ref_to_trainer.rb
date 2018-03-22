class AddPokemonRefToTrainer < ActiveRecord::Migration[5.1]
  def change
  	add_reference(
  		:pokemons,
  		:trainers,
  		index: true
  	)
  end
end
