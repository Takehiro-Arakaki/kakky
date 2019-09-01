Rails.application.routes.draw do

  root 'home#index'
  
  namespace :admin do
    
    resources :levels do
      resources :questions do
      end
    end
    resources :selects do
  end
  
  end
end
