Rails.application.routes.draw do

  # Admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Docment page
  root 'static_pages#docs'

  # API
  namespace 'api' do
    namespace 'v1' do
      resources :quotes, only: [:index, :show]
    end
  end
end
