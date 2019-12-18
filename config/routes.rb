Rails.application.routes.draw do

  root 'home#index'
  # get 'home/show'
  get 'home/select_learn'
  get 'home/select_set'


  devise_for :users, :controllers => {
    :sessions => 'users/sessions',
    :registrations => 'users/registrations'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # APIコントローラへのルーティング
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :questions, only: [:index, :show]
    end
  end

  namespace :admin do

    namespace :ruby do
      resources :levels do
        resources :questions
      end
      resources :question_selects
    end

    namespace :info do
      resources :levels do
        resources :questions
      end
      resources :question_selects
    end

  end

  namespace :ruby do
    resources :levels do
      resources :questions do
        member do
          post :result
          get :correct
          get :incorrect
        end
      end
    end
  end

  namespace :info do
    resources :levels do
      resources :questions do
        member do
          post :result
          get :correct
          get :incorrect
        end
      end
    end
  end

end
