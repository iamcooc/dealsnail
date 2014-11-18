module ArticlesHelper
	include ActsAsTaggableOn::TagsHelper

	def render_article_content(content)
		truncate(simple_format(content), :length => 100)
	end

	
		


end
