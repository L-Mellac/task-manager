Rails.application.routes.draw do
  get 'categories/create'
  get 'categories/update'
  get 'categories/delete'
  get 'tasks/create'
  get 'tasks/update'
  get 'tasks/delete'
  get 'days/create'
  get 'days/index'
  get 'days/show'
  get 'days/update'
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
