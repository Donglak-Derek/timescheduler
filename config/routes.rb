Rails.application.routes.draw do
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end
  resources :audit_logs, :posts, except: [:new, :edit, :destroy], concerns: :paginatable
  namespace :admin do
      resources :posts
      resources :users
      resources :admin_users

      root to: "posts#index"
    end
  resources :posts do
    member do
      get :approve
    end
  end
  
  devise_for :users, skip: ["registrations"]
  root to: 'static#homepage'
end
