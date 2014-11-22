class StaticPagesController < ApplicationController


	def home
		@articles = Article.all.paginate(:page => params[:page], :per_page => 3)
		
	end	
end
