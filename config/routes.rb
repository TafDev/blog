Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'posts#index'

  get 'users/:id/posts_index', to: 'users#posts', as: 'user_posts'

end
