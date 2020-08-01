class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :img_src, default: "https://ibb.co/gwmktJy"
      t.boolean :available, default: true
      t.integer :item_count, default: 1
      t.integer :cart_id
    end
  end
end
