Rails.application.routes.draw do
  resources :subjects
  resources :posts do
    resources :comments
  end
  root 'home#index'
  get '/LICENSE.md', to: 'home#license'
  post '/posts/search', to: 'posts#search', as: 'search'
  devise_for :users, controllers: { registrations: 'registrations' }
  get '/profile/:user', to: 'users#profile', as: 'profile'
  get '/profile/:user/posts', to: 'posts#user_posts', as: 'user_posts'
  ###!
  # pagina inicial do site esta definida no metodo 'index' do controller 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
