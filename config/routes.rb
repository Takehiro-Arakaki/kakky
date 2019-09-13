Rails.application.routes.draw do

  root 'home#index'
  get 'home/show'

  devise_for :sysadmin, controllers: {sessions: 'sysadmin/sessions'}

  namespace :admin do
    resources :levels do
      resources :questions
    end
    resources :question_selects
    resources :users
  end

end
