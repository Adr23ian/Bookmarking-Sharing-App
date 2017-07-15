class CreateJoinTableBookmarkUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Bookmarks, :Users do |t|
      # t.index [:bookmark_id, :user_id]
      # t.index [:user_id, :bookmark_id]
    end
  end
end
