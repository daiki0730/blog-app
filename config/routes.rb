Rails.application.routes.draw do
  devise_for :users
  root    'posts#index'
  get     'posts/new'   =>  'posts#new'
  get     'posts/show'  =>  'posts#show'
  post    'posts'       =>  'posts#create'
  get     'users/:id'   =>  'users#show'
  delete  'posts/:id'   =>  'posts#destroy'
end
