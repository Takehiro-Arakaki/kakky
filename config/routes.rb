Rails.application.routes.draw do

  root 'home#index'
  get 'home/show'

  devise_for :users, :controllers => {
    :sessions => 'users/sessions',
    :registrations => 'users/registrations'
  }

  # APIコントローラへのルーティング
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :questions, only: [:index, :show]
    end
  end

  namespace :admin do
    resources :levels do
      resources :questions
    end
    resources :question_selects
  end

  namespace :player do
    resources :levels do
      resources :questions
    end
  end

end
