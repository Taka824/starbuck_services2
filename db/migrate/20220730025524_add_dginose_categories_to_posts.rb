class AddDginoseCategoriesToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :dignose_category, :string
  end
end
