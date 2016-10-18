Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  root 'posts#index'

  get 'users/:id/posts_index' => 'users#posts', as: :user_posts

end
