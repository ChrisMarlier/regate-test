module PokemonManager
  class ListPokemon
    def call(page = 0)
      response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?offset=' + page.to_s)
      json = JSON.parse(response&.body || "{}")

      array =[]
      json["results"].each { |pokemon|
        new_pokemon = Pokemon.new(pokemon)
        array.push(new_pokemon.as_json)
      }
    end
  end
end