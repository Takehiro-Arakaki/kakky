Rails.application.routes.draw do

  devise_for :sysadmins
  root 'home#index'
  get 'home/show'

  namespace :admin do

    resources :levels do
      resources :questions
    end
    resources :question_selects
    resources :users

  end
end
