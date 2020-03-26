Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
