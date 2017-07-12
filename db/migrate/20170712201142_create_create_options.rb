class CreateCreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options, id: :uuid do |t|
      t.string :content
      t.uuid :question_id
      
      t.timestamps
    end
  end
end
