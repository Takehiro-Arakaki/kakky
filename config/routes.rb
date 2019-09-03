Rails.application.routes.draw do

  root 'home#index'

  namespace :admin do

    resources :levels do
      resources :questions
    end
    resources :question_selects
    resources :users

  end
end
