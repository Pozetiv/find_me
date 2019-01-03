class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.integer :subcategory_id
      t.integer :user_id

      t.timestamps
    end

    add_foreign_key :posts, :users
  end
end
