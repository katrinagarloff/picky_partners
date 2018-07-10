class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :questions, :question, :ask
  end
end
