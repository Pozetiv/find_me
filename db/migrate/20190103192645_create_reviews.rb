class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :rating
      t.integer :post_id
      t.text :body

      t.timestamps
    end
    add_foreign_key :reviews, :posts
  end
end
