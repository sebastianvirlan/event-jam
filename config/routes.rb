Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'

    unauthenticated do
      root 'devise/sessions#new'
    end

    authenticated :user do
      root 'topics#index'
    end
  end

  resources :events
  resources :topics
  get '/my_events', to: 'events#my_events', as: :my_events
  get 'netflix_login', to: 'pages#netflix_login', as: :netflix_login
  get 'netflix', to: 'pages#netflix', as: :netflix
  get 'netflix_video', to: 'pages#netflix_video', as: :netflix_video
end
