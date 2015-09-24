class User < ActiveRecord::Base
	has_many :campaign
	belongs_to :campaign
end
