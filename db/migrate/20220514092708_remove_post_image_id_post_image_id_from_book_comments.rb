class RemovePostImageIdPostImageIdFromBookComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :book_comments, :post_image_id, :inteder
  end
end
