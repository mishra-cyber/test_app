Rails.application.routes.draw do
  get '/'=>"home#top"
  get 'post/index'=>"post#index"
  get 'post/new'=>"post#new"
  get 'post/:id'=>"post#show"
  get 'about'=>"home#about"
  post 'post/create'=>"post#create"
  get  'post/:id/edit'=>"post#edit"
  post 'post/:id/update'=>"post#update"
  post 'post/:id/destroy'=>"post#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
