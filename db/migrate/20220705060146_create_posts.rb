class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :arrange_content, null: false
      t.integer :price
      t.text :one_point
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
