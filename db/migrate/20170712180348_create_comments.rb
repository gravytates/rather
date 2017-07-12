class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments, id: :uuid do |t|
      t.string :content
      t.uuid :user_id
      t.uuid :question

      t.timestamps
    end
  end
end
