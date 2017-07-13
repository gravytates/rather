class Fixqid < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :question, :uuid
    add_column :comments, :question_id, :uuid
  end
end
