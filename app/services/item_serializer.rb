class ItemSerializer

  def initialize(item_object)
    @item = item_object
  end

  def to_serialized_json
    @item.to_json(:include => {
            :cart => {:except => [:created_at, :updated_at]},
        }, :except => [:created_at, :updated_at])
  end

end


