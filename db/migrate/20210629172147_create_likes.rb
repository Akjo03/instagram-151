class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
