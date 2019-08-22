class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.belongs_to :actor
      t.belongs_to :friend, class: 'Actor'
    end
  end
end
