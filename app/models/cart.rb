class Cart < ApplicationRecord
    has_many :items

    # validates :item, uniqueness: { scope: :cart}
    validates :item, uniqueness: true
end