Rails.application.routes.draw do
  root "hello#index"
  get '/home', to: 'hello#index'
  get '/my_explorations', to: 'my_explorations#index'
  post '/my_explorations', to: 'my_explorations#chat'
  get 'blog/index', to:'blog#index'

end
