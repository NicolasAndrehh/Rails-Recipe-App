Rails.application.routes.draw do
  devise_for :users

   # Commented to prevent defaulting to sign in view to check if signed in or not
    devise_scope :user do
      root 'devise/sessions#new'
    end

  resources :recipes
  
  resources :recipe_foods

  resources :public_recipes

  resources :foods, except: [:update]

  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resources :recipe_foods, only: [:new, :create, :destroy, :update, :edit]
  end

  resources :users, only: [:index, :show]

  get '/shopping_lists', to: 'shopping_lists#index', as: 'shopping_lists'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")


  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :recipes
    
      resources :recipe_foods
  
      resources :public_recipes
  
      resources :foods, except: [:update]
  
      resources :recipes, only: [:index, :show, :new, :create, :destroy] do
        resources :recipe_foods, only: [:new, :create, :destroy, :update, :edit]
      end
  
      resources :users, only: [:index, :show]

      get '/shopping_lists', to: 'shopping_lists#index', as: 'shopping_lists'
    end
  end
  
  
end


