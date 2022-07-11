Rails.application.routes.draw do
  root 'staebuck_pages#top'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"  

  resources :users, only: %i[new create]
  resources :posts do
    resources :comments, only: %i[create], shallow: true
    collection do
      get :likes
    end
  end
  resources :categories, except: [:new, :show]
  resources :likes, only: %i[create destroy]
end
