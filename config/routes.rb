Rails.application.routes.draw do
  devise_for :users
  devise_for :uses
  resources :groups
   root 'groups#index'
end
