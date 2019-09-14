Rails.application.routes.draw do

  devise_for :users
  root 'home#index'
  get 'home/show'

  devise_for :user, controllers: {
          registrations: 'user/registrations',
          sessions: 'user/sessions'
  }

  namespace :admin do
    resources :levels do
      resources :questions
    end
    resources :question_selects
  end

end
