Rails.application.routes.draw do
  devise_for :users

  root 'posts#index'

  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]

    collection do
      get :slide
    end
  end

  get '/post_request', to: 'posts#show', as: 'post_request'

  resources :users, only: [:show, :edit]

  get "/auth/twitter/callback" => "omniauth_callbacks#twitter"

end
