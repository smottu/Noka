class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :item_name, null: false
      t.text :item_text
      t.integer :item_amount, null: false, default: "0"
      t.string :item_image
      t.integer :item_price, null: false
      t.boolean :is_active,
      t.timestamps
    end
  end
end
