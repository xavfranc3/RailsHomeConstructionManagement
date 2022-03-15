Rails.application.routes.draw do
  root 'welcome#index'
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
  end
  devise_for :users
  resources :tenants
end
