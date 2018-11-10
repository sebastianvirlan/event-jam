Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events
  resources :topics
  get 'netflix_login', to: 'pages#netflix_login', as: :netflix_login
  get 'netflix', to: 'pages#netflix', as: :netflix
end
