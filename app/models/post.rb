class Post < ApplicationRecord
	mount_uploader :carrierimage, ImageUploader

	belongs_to :user
	has_many :likes
	has_many :liked_users, through: :likes, source: :user

end
