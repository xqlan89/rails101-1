Rails.application.routes.draw do
  devise_for :users
  devise_for :uses
  resources :groups do
    member do
      post :join
      post :quit
    end


  resources :posts
end

  namespace :account do
    resources :groups
  end
  root 'groups#index'
end
