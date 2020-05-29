Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'animal', controller: :animal, action: :create
      get 'animal', controller: :animal, action: :index
      get 'animal/list', controller: :animal, action: :list
      get 'animal/:id', controller: :animal, action: :show
      patch 'animal/:id', controller: :animal, action: :comunication
      put 'animal/:id', controller: :animal, action: :update
      delete 'animal/:id', controller: :animal, action: :destroy
    end
  end
  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  delete 'signin', controller: :signin, action: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
