Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    resource :like, module: :posts
  end

  root 'posts#index'
end
