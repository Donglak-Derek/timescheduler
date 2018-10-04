Rails.application.routes.draw do
  resources :audit_logs, except: [:new, :edit, :destory] do
    member do
      get :confirm
    end
  end

  # concern :paginatable do
  #   get '(page/:page)', action: :index, on: :collection, as: ''
  # end
  # # delete :new from the resources because cannot access new_post_path
  # resources :audit_logs, :posts, concerns: :paginatable
  
  namespace :admin do
      resources :posts
      resources :users
      resources :admin_users
      resources :employees

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
