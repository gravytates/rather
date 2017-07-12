class Question < ApplicationRecord
  has_many :options
  has_many :comments
  # has_many :users, through :votes
end
