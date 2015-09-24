class User < ActiveRecord::Base
	has_many :campaign
	belongs_to :campaign

	validates :name, length: {maximum: 128},
				 	 presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
	                  format: { with: VALID_EMAIL_REGEX },
	                  uniqueness: { case_sensitive: false}

	has_secure_password

end
