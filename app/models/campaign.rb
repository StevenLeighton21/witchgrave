class Campaign < ActiveRecord::Base
	validates :description, length: { maximum: 500}
end
