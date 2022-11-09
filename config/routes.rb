Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'restaurants#index'
  resources :restaurants, only: %w[index show new create] do
    resources :reviews, only: %w[new create]
  end
end
