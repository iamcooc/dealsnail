class AddIndexToArticles < ActiveRecord::Migration
  def self.up
  	add_column :articles, :user_id, :integer
    add_index :articles, :user_id
    add_index :articles, :updated_at
  end

  def self.down
  	remove_column :articles, :user_id, :integer
    remove_index :articles, :user_id
    remove_index :articles, :updated_at
  end

end
