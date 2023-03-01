Rails.application.routes.draw do
  devise_for :users
  resources :items, only: [:index, :show, :new, :create, :destroy]
  root to: "items#index"
  get 'search', to: "items#search"
end
