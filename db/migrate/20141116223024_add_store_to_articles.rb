class AddStoreToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :store, :string
  end
end
