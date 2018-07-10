class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :competitiveness, :integer
    add_column :users, :stress_level, :integer
    add_column :users, :leadership, :integer
  end
end
