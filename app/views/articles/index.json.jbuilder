json.array!(@articles) do |article|
  json.extract! article, :title, :discount, :brand, :store, :content, :expire_time, :created_by, :thumbnail_img, :avatar

  json.url article_url(article, format: :json)
end
