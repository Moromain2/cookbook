Rails.application.routes.draw do
  devise_for :users
  get 'users/:id' => 'users#show', as: :users_show
  resources :recipes

  root 'recipes#index'
  get 'recipes/show'
  get 'recipes/new'
  get 'recipes/edit'
  get 'recipes/create'
  get 'recipes/update'
  get 'recipes/destroy'
end
