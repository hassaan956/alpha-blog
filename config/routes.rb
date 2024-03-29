Rails.application.routes.draw do
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
      #--Previos Route [ Route 7 ]---------------------------------
      #Prefix            | article
      #Verb              | GET
      #URI               | /articles/:id(.:format)
      #Controller#Action | articles#show
      #------------------------------------------------------------
        #resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
        #Representational State Transfer REST-ful resources are defined below;
  resources :articles
      #--New Route [ Route 3 ]-------------------------------------
      #Prefix            | article
      #Verb              | GET
      #URI               | /articles/:id(.:format)
      #Controller#Action | articles#show
      #------------------------------------------------------------
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end
