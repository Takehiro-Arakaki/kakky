Rails.application.routes.draw do

  root 'home#index'
  get 'home/show'

  devise_for :users, :controllers => {
    :sessions => 'users/sessions',
    :registrations => 'users/registrations'
  }

  namespace :admin do
    resources :levels do
      resources :questions
    end
    resources :question_selects
  end

  resources :visitors

end
