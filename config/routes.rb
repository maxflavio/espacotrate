Rails.application.routes.draw do
  get 'wellcome/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :reles
  resources :artigos

  root 'wellcome#index'

end
