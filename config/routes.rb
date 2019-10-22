Rails.application.routes.draw do
  get 'show_artigo/index'
  devise_for :users, skip: :wellcome
  get 'wellcome/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :reles
  resources :artigos
  resources :newsletters

  root 'wellcome#index'

  get 'show_artigo/:id', :controller => 'show_artigo', :action => 'index', :method => :get


end
