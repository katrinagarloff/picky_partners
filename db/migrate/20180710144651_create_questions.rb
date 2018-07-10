class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer_1
      t.string :answer_2
      t.string :attribute

      t.timestamps
    end
  end
end
