Rails.application.routes.draw do
  get 'pages/home'
  resources :users
  devise_for :users
  devise_for :users, only: [:index, :show]
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
