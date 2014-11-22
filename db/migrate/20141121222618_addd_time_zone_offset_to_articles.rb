class AdddTimeZoneOffsetToArticles < ActiveRecord::Migration
  def change
  		add_column :articles, :timeZoneOffset, :integer, :default => 0
  end
end
