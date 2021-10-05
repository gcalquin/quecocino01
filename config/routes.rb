Rails.application.routes.draw do
  resources :statics
  resources :ingredients
  resources :menus
  resources :recipes
  resources :pantries
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
