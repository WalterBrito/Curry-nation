Rails.application.routes.draw do
  devise_for :users
  # root 'recipes#index'
  resources :recipes
  resources :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
