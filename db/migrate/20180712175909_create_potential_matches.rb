class CreatePotentialMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :potential_matches do |t|
      t.integer :user_id
      t.integer :user2_id

      t.timestamps
    end
  end
end
