Rails.application.routes.draw do
  devise_for :users
  root 'recipes#index'
  resources :users, only: [:show, :edit, :update]
  resources :recipes, only: [:show, :create, :new, :edit, :update] do
    resources :raw_materials, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
