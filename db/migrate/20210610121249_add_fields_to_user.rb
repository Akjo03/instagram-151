class AddFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :website, :string
    add_column :users, :bio, :text
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :image, :string
  end
end
