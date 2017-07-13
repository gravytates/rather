require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should belong_to :user }
  it { should belong_to :question }
  it { should validate_presence_of :content }
  it { should validate_presence_of :question_id }
end
