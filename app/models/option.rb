class Option < ApplicationRecord
  belongs_to :question
  has_many :votes
  validates :content, :question_id, presence: true
end
