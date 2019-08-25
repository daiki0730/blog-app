Rails.application.routes.draw do
  root 'posts#index'
  get  'posts/new'  =>  'postss#new'
end
