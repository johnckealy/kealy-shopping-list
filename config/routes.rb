Rails.application.routes.draw do
  devise_for :users
  root to: 'shopping_trips#index'

  resources :shopping_trips
  resources :items
  resources :shopping_lists
  resources :shopping_list_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
