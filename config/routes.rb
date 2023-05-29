Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'devise/sessions' }
  resources :projects
  resources :project_clients
  resources :companies
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
#   devise_for :users, skip: [:registrations]
#   as :user do
#   get 'login', to: 'devise/sessions#new', as: :new_user_session
#   post 'login', to: 'devise/sessions#create', as: :user_session
  # get 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
# end

  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "user#index"
end
