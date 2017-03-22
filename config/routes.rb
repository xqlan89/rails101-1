Rails.application.routes.draw do
  devise_for :users
  devise_for :uses
  resources :groups do
    resources :posts
  end
  root 'groups#index'
end
