class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes, id: :uuid do |t|
      t.uuid :user_id
      t.uuid :option_id

      t.timestamps
    end
  end
end
