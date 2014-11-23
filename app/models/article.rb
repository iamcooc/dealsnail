class Article < ActiveRecord::Base


	belongs_to :user
	validates :user_id, presence: true
	default_scope -> { order('updated_at DESC') }
	is_impressionable
	acts_as_taggable
	searchkick

	has_attached_file :avatar, 
	 	:styles => { 
	 		:medium => "300x300>",
	  		:thumb => "100x100>" }#,:default_url => "/images/:style/missing.png"

	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/  

	validates_presence_of :title, :store, :link, :content, :avatar	


	
end
