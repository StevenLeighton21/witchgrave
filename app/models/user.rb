class User < ActiveRecord::Base
	has_many :campaign
	belongs_to :campaign

	validates :name, length: {maximum: 128},
				 	 presence: true
	validates :email, presence: true
end
