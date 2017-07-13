FactoryGirl.define do
  factory :user do
    username 'Fred'
    sequence(:email) { |n| "person_#{n}@example.com" }
    password 123456
    password_confirmation 123456
  end

  factory :question do
    association :user, :factory => :user, strategy: :build
  end

  factory :option do
    association :question, :factory => :question, strategy: :build
    content 'the games we play, Spencer... Go to hell Grady'
  end

  factory :comment do
    association :question, :factory => :question, strategy: :build
    association :user, :factory => :user, strategy: :build
    content 'this game sucks'
  end

  factory :vote do
    association :option, :factory => :option, strategy: :build
  end
end
