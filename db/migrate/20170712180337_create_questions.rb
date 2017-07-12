class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions, id: :uuid do |t|
      t.string :content

      t.timestamps
    end
  end
end
