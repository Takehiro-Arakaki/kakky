Rails.application.routes.draw do

  root 'home#index'
  get 'home/show'

  devise_for :users, controllers: {
          registrations: 'users/registrations',
          sessions: 'users/sessions'
  }
  # resources :users

  namespace :admin do
    resources :levels do
      resources :questions
    end
    resources :question_selects
  end

end
