class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name, null: false
      t.integer :price, null: false
      t.string :item_pic, null: false

      t.timestamps null: false
    end
  end
end
