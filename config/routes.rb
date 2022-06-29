Rails.application.routes.draw do
  resources :comments, only: [:create, :update]
  resources :tags, only: [:index, :show]
  # resources :users, except: [:index, :destroy]
  resources :users, except: [:index, :destroy] do
    resources :invitations, only: [:index, :show] 
  end
  resources :posts, except: :destroy
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
