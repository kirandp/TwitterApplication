class AddDescUrlToLink < ActiveRecord::Migration
  def change
    add_column :links, :description, :string
    add_column :links, :url, :string
  end
end
