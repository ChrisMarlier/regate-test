class PokemonsController < ApplicationController
    def index
        render :json => {:pokemons => ListPokemon.new.call}
    end
end