class Post < ActiveRecord::Base
	# strong_paramaters :title, :content
	
	validates :title, :content, presence: true
	validates :title, :content, length: {minimum: 2}
	validates :title, uniqueness: true 

end