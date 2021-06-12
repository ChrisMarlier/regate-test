class Pokemon
    include ActiveModel::Model
    include ActiveModel::Serializers::JSON

    attr_accessor :name, :url, :other

    def attributes
        {
            'name' => nil,
            'url' => nil,
        }
    end
end
