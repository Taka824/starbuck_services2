Rails.application.routes.draw do
  get 'oauths/oauth'
  get 'oauths/callback'
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  get 'password_resets/create'
  get 'password_resets/edit'
  get 'password_resets/update'
  root 'staebuck_pages#top'
  get 'login', to: 'user_sessions#new'
  get 'rule', to: 'pages#rule'
  get 'term', to: 'pages#term'

  get 'result1', to: 'dignoses#result1'
  get 'no_coffee_sweet', to: 'dignoses#no_coffee_sweet'
  get 'no_coffee_cool', to: 'dignoses#no_coffee_cool'
  get 'no_coffee_spicy', to: 'dignoses#no_coffee_spicy'
  get 'coffee_sweet', to: 'dignoses#coffee_sweet'
  get 'coffee_no_sweet', to: 'dignoses#coffee_no_sweet'
  get 'coffee_no_milk', to: 'dignoses#coffee_no_milk'


  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback" # for use with Github, Facebook
  get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider

  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"  

  resources :users, only: %i[new create]
  resources :posts do
    resources :comments, only: %i[create destroy], shallow: true
    collection do
      get :likes
    end
    collection do
      get 'search'
    end
  end
  resources :categories, except: [:new, :show]
  resources :likes, only: %i[create destroy]
  resource :profile, only: %i[show edit update]
  resources :password_resets, only: %i[new create edit update]
  resources :retirements
  resources :articles, only: %i[index show]
  resources :dignoses

  namespace :admin do
    root to: 'dashboards#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    resources :posts, only: %i[index edit update show destroy]
    resources :users, only: %i[index edit update show destroy]
    resources :articles
  end
end
