require 'rails_helper'

RSpec.describe Question, type: :model do

  it { should validate_presence_of :user_id }
  it { should belong_to :user }
  it { should have_many :comments }
  it { should have_many :options }

end
