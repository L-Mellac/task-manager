Rails.application.routes.draw do
  devise_for :user

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :days, only: [:create, :index, :show, :update] do
    resources :tasks, only: [:create, :update]
  end

  resources :tasks, only: [:delete]

  resources :categories, only: [:create, :update, :delete]
end
