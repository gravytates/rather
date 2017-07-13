class Question < ApplicationRecord
  has_many :options
  has_many :comments
  belongs_to :user

  validates :user_id, presence: true


  scope :recent, -> { order(created_at: :desc)}
end
