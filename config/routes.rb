Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  resources :questions do
    resources :comments, :options
  end

  resources :options do
    resources :votes
  end

  resource :home, only: [:show]

  root "home#show"
end
