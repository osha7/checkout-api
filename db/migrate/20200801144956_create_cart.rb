class CreateCart < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :quantity, default: 0
      t.float :total, default: 0
      t.float :sales_tax, default: 8.4
    end
  end
end
