Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :only => [:index, :show, :create, :destroy, :update]
  resources :artworks, :only => [:show, :create, :destroy, :update]
  resources :artwork_shares, :only => [:create, :destroy]
 
    resources :users do
      # provides a route to get all the artworks for a given user.
      resources :artworks, only: :index
    end
  
    
  


  # get 'users/:id', to: 'users#show', as: 'user'
  # get 'users', to: 'users#index', as: 'users'
  # post 'users', to: 'users#create'
  # get 'users/new', to: 'users#new', as: 'new_user'
  # get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'
end
