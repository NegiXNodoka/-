class User < ActiveRecord::Base
	validates :username, presence: true, uniqueness: { case_sensitive:false }
	validates :password, presence: true
	has_secure_password
end
