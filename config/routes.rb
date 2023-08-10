Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/login', to: 'authentication#login'
  post  '/user/register', to: 'user#create'
  get  '/user/show', to: 'user#show'
  

end
