Rails.application.routes.draw do
  get 'rentings/new'
  get 'rentings/create'
  devise_for :users
  resources :items do
    resources :rentings, only: [:index, :new, :create]
    resources :reviews, only: [:create, :destroy]
  end

  root to: "items#index"
  get 'search', to: "items#search"
  delete 'items/:id', to: "items#destroy", as: :item_d
end
