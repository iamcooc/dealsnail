json.array!(@articles) do |article|
  json.extract! article, :title, :discount, :brand, :store, :link, :content, :expire_time, :created_by, :thumbnail_img, :avatar

  json.url article_url(article, format: :json)
end
