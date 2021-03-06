class StaticPagesController < ApplicationController


	def home
		@articles = Article.all.paginate(:page => params[:page], :per_page => 20)
	end	

	def search
		if params[:query].present?
			@articles = Article.search(params[:query], page: params[:page], :per_page => 30)
			@query = params[:query]
		else
			@result = "no"
		end	
	end	
end
