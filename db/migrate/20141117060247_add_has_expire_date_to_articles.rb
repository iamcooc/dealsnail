class AddHasExpireDateToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :hasExpiryDate, :boolean, :default => false
  end
end
