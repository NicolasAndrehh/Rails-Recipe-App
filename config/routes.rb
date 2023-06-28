Rails.application.routes.draw do
  get 'recipe_foods/index'
  get 'public_recipes/index'
  get 'recipes/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "foods#index"

  resources :foods
  resources :recipes
  resources :recipe_foods
  resources :public_recipes
  resources :shopping_lists
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resources :recipe_foods, only: [:new, :create, :destroy, :update, :edit]
end
end
