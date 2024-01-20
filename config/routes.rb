Rails.application.routes.draw do

  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'home/index'
  root 'home#index'

  resources :invitations, only: [:edit, :update]

  namespace :manager do
    resources :invitations
  end
end
