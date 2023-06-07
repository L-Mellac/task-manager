Rails.application.routes.draw do
  devise_for :user

  root to: "pages#landing"

  resources :days, only: [:create, :index, :show, :update] do
    resources :tasks, only: [:create, :update]
  end

  resources :tasks, only: [:destroy]

  resources :categories, only: [:create, :update, :destroy]
end
