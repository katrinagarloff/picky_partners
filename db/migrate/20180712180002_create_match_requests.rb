class CreateMatchRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :match_requests do |t|
      t.integer :user_id
      t.integer :user2_id

      t.timestamps
    end
  end
end
