class PokemonsController < ApplicationController
    def index
        begin
            render :json => {:pokemons => PokemonManager::ListPokemon.new.call}
        rescue
            render :json => {"error" => "Error while fetching Pokemon API"}
        end  
    end

    def show
        begin 
            render :json => {:pokemon => PokemonManager::GetPokemon.new.call(show_params)}
        rescue
            render :json => {"error" => "Pokemon not found"}
        end
    end

    def random
        begin 
            render :json => {:pokemon => PokemonManager::GetPokemon.new.call(rand(1..898))}
        rescue
            render :json => {"error" => "Pokemon not found"}
        end
    end

    private

    def show_params
        params.require(:id)
    end
end