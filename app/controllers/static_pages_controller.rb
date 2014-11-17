class StaticPagesController < ApplicationController


	def home
		@articles = Article.all.order(updated_at: :desc)
		
	end	
end
