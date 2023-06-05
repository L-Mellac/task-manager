Rails.application.routes.draw do
  devise_for :users
  root to: "sessions#new"

  resources :days, only: [:create, :index, :show, :update] do
    resources :tasks, only: [:create, :update]
  end
  resources :tasks, only: [:delete]
  resources :categories, only: [:create, :update, :delete]
end
