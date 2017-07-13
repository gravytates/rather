require 'rails_helper'

RSpec.describe Option, type: :model do
  it { should have_many :votes }
  it { should belong_to :question }
  it { should validate_presence_of :content }
  it { should validate_presence_of :question_id }
end
