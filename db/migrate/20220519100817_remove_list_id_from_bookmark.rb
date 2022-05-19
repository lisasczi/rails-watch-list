class RemoveListIdFromBookmark < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookmarks, :list_id
  end
end
