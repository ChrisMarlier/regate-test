class Pokemon
    include ActiveModel::Model
    attr_accessor :name, :url, :weight, :abilities, :base_experience, :forms, :game_indices, :height, :held_items, :id, :is_default, :location_area_encounters, :moves, :order, :past_types, :species, :sprites, :stats, :types

    def attributes
        {
            'name' => nil,
            'url' => nil,
            'weight' => nil,
            'abilities' => nil,
            'base_experience' => nil, 
            'forms' => nil,
            'game_indices' => nil,
            'height' => nil,
            'held_items' => nil,
            'id' => nil,
            'is_default' => nil,
            'location_area_encounters' => nil,
            'moves' => nil,
            'order' => nil,
            'past_types' => nil,
            'species' => nil,
            'sprites' => nil,
            'stats' => nil,
            'types' => nil
        }
    end
end
