class AddAdminCategoriesToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :admin_category, :string
  end
end
