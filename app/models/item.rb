class Item < ActiveRecord::Base
	has_many :bids
	has_many :users, through: :bids

	validates :item_name, :price, presence: true
end
