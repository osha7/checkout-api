class CartSerializer

  def initialize(item_object)
    @cart = item_object
  end

  def to_serialized_json
    @cart.to_json(:include => {
            :items => {:except => [:created_at, :updated_at]},
        }, :except => [:created_at, :updated_at])
  end

end
