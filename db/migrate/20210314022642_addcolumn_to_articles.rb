class AddcolumnToArticles < ActiveRecord::Migration[6.1]
  def change
  	add_column :articles, :description, :integer
  end
end
