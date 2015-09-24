class Campaign < ActiveRecord::Base
	belongs_to :user
	has_many :user
	validates :description, length: { maximum: 500},
							presence: true
	validates :name, length: {maximum: 128},
					  presence: true
	
end
