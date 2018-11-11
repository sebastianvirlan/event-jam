Rails.application.routes.draw do
  devise_for :users
  # root 'topics#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events
  resources :topics
  get 'netflix_login', to: 'pages#netflix_login', as: :netflix_login
  get 'netflix', to: 'pages#netflix', as: :netflix
  # devise_scope :user do
  #   get 'login', to: 'devise/sessions#new'
  # end

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'

    authenticated :user do
      root 'home#index'
    end

    unauthenticated do
      root 'devise/sessions#new'
    end
  end
end
