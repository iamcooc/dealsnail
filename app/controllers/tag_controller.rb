class TagController < ApplicationController
  def show
  	@tag = Tag.find(params[:id])
  	@articles = Article.tagged_with(@tag.name)
  end
end
