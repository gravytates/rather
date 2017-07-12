class AddUserToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :user_id, :uuid
  end
end
