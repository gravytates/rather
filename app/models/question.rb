class Question < ApplicationRecord
  has_many :options
  has_many :comments
  belongs_to :user

end
