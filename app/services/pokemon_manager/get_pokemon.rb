module PokemonManager
  class GetPokemon
        def call(id)
            response = HTTParty.get('https://pokeapi.co/api/v2/pokemon/' + id.to_s)
            json = JSON.parse(response&.body || "{}")
            Pokemon.new(json)
        end
  end
end