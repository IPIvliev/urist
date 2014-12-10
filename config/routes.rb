Urist::Application.routes.draw do

  resources :articles


  mount RailsAdmin::Engine => '/kro', :as => 'rails_admin'

# Жалобы
  resources :apeals
  match '/old/apeals/', to: 'apeals#old_apeals', as: :old_apeals

# Динамические страницы
  match '/prices.html', to: 'admin#prices'
  match '/podklucheniya.html', to: 'admin#podklucheniya'
  match '/teplo.html', to: 'admin#teplo'
  match '/gvs.html', to: 'admin#gvs'
  match '/blanks.html', to: 'admin#blanks'
  match '/polozhenie.html', to: 'admin#polozhenie'
  match '/plan.html', to: 'admin#plan'
  match '/today.html', to: 'admin#today' 
  match '/arhive.html', to: 'admin#arhive'
  match '/dogovora.html', to: 'admin#dogovora'

  get "users/profile"

  devise_for :users
  resources :users

# Страницы главного меню
  get "/index.html", to: "static_pages#index"
  get "/contact.html", to: "static_pages#contact"
  get "/services.html", to: "static_pages#services"
  get "/blog.html", to: "articles#index"
  get "/about.html", to: "static_pages#about"
  get "/prices.html", to: "static_pages#prices"

 # Главная страница
  root :to => 'static_pages#index'
end
