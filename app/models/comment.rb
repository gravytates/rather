class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :question
  validates :content, :question_id, :user_id, presence: true
end
