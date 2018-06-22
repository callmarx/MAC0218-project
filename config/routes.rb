Rails.application.routes.draw do
  resources :subjects
  resources :posts do
    resources :comments
  end
  root 'subjects#index'
  devise_for :users, controllers: { registrations: 'registrations' }
  ###!
  # pagina inicial do site esta definida no metodo 'index' do controller 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
