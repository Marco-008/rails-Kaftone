Rails.application.routes.draw do
  devise_for :users
  resources :items do
    resources :reviews, only: [:create, :destroy]
    
  end
  root to: "items#index"
  get 'search', to: "items#search"
  delete 'items/:id', to: "items#destroy", as: :item_d
end
