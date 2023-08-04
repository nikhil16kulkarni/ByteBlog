Rails.application.routes.draw do

  get 'posts/index'

  root 'posts#index', as: 'home'
  # get '/', to: 'home#index', as: 'home'
  # get '/posts/new', to: 'posts#new', as: 'new_post'

  #Declaring posts as a resource
  resources :posts do #Generate routes for the posts

    resources :comments

  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
