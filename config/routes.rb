Rails.application.routes.draw do
  # get 'quotes/index'
  resources :quotes, only: [:index]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#hello'

  namespace 'api' do
    namespace 'v1' do
      resources :quotes, only: [:index, :show]
    end
  end
end
