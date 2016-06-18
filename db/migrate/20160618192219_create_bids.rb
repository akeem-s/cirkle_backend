class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
    	t.references :user, null: false
    	t.references :item, null: false
    	t.boolean :winner, null: false

      t.timestamps null: false
    end
  end
end
