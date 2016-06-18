class Bid < ActiveRecord::Base
	belongs_to :user
	belongs_to :item

	validates :user_id, :item_id
end
