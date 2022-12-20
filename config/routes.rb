Rails.application.routes.draw do
  get 'maps/index'
  devise_for :users
  root to: 'heritages#index'
  resources :heritages, only: [:new, :create, :show, :edit, :update, :destroy] do
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  resources :maps, only: :index
  resources :users, only: :show
end