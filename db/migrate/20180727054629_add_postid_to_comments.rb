class AddPostidToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :postid, :integer
  end
end
