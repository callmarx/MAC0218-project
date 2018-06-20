Rails.application.routes.draw do
  resources :subjects do
    resources :posts
  end
  devise_for :users
  ###!
  # pagina inicial do site esta definida no metodo 'index' do controller 'home'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
