class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :discount
      t.string :brand
      t.text :content
      t.datetime :expire_time
      t.string :created_by
      t.string :thumbnail_img



      t.timestamps
    end
  end
end
