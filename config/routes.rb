Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  get "/blog_post/new", to: "blog_post#new", as: :new_blog_post, only: [:destroy], module: :blog_post
  get "/blog_post/:id", to: "blog_post#show", as: :blog_post, only: [:destroy], module: :blog_post
  patch "/blog_post/:id", to: "blog_post#update", only: [:destroy], module: :blog_post
  delete "/blog_post/:id", to: "blog_post#destroy", only: [:destroy], module: :blog_post
  get "/blog_post/:id/edit", to: "blog_post#edit", as: :edit_blog_post, only: [:destroy], module: :blog_post
  post "/blog_post", to: "blog_post#create", as: :blog_posts, only: [:destroy], module: :blog_post

  # get "blog_post/new" => "blog_post#new", as: :new_blog_post
  # resources :blog_post, :except => [:new, :edit] do
  #   resource :cover_image, only: [:destroy], module: :blog_post
  # end


# This code is from stackoverflow... url: https://stackoverflow.com/questions/12235718/override-show-resource-route-in-rails
  # resources :some_resource, :except => :index do
  #   get 'some_resource', :on => :collection, :action => 'show'
  # end

  # resources :some_resource, :except => :index do
  #   collection do
  #     get 'some_resource', :action => 'show'
  #     # more actions...
  #   end
  # end

  # Defines the root path route ("/")
  root "blog_post#index"
end
