class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
    	t.references :user, null: false, index: true
    	t.references :item, null: false, index: true
    	t.boolean :winner, null: false

      t.timestamps null: false
    end
  end
end
