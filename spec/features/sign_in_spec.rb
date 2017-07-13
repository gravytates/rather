
require 'rails_helper'

describe "admin user routes and features" do
  it 'will create a new game' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    FactoryGirl.create(:question, user: user)
    visit questions_path
    expect(page).to have_content('We got questions, you got answers.')
  end
end
