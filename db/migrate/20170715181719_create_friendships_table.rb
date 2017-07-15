class CreateFriendshipsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :friendships_tables do |t|
      create_table :friendships, id: false do |t|
        t.integer :user_id
        t.integer :friend_user_id
      end
    end
  end
end
