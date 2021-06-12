class ListPokemon < ApplicationService

  def call(page = 0)
    response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?offset=' + page.to_s)
    json = JSON.parse(response&.body || "{}")

    array =[]
    json["results"].each { |pokemon|
      p = Pokemon.new(pokemon)
      array.push(p.as_json)

    }
    print array
  end
end