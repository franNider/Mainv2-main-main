Rails.application.routes.draw do
  get 'profiles/index'
  get 'profiles/edit'
  get 'profiles/update'
  get 'inicio/index'
  get 'turnos/index'
  get 'perfiles/index'
  get 'authentication/sessions/new'
  get 'turnos/new'
  get 'dogs/new'
  get 'checks/new'
  get 'vaccines/new'

  resources :main
  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create]
  end
  get 'logout', to: 'authentication/sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "inicio#index"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :profiles, only: [:index, :edit, :update]
  resources :dogs ,only: [:new, :create]
  resources :vaccines ,only: [:new, :create]
  resources :checks ,only: [:new, :create]
end
