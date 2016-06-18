class User < ActiveRecord::Base
	has_secure_password

	has_many :bids
	has_many :items, through: :bids

	validates :username, :email, presence: true
end