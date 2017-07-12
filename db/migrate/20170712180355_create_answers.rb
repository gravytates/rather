class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :content

      t.uuid :question_id
      t.uuid :user_id

      t.timestamps
    end
  end
end
