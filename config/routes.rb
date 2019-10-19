Rails.application.routes.draw do
  devise_for :users, skip: :wellcome
  get 'wellcome/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :reles
  resources :artigos
  resources :newsletters

  root 'wellcome#index'

end
