Urist::Application.routes.draw do
  resources :equip_houses


  get "counters/index"

  get "counters/show"

  resources :articles


  mount RailsAdmin::Engine => '/kro', :as => 'rails_admin'

# Жалобы
  resources :apeals
  get '/old/apeals/', to: 'apeals#old_apeals', as: :old_apeals

# Динамические страницы
  get '/prices.html', to: 'admin#prices'
  get '/podklucheniya.html', to: 'admin#podklucheniya'
  get '/teplo.html', to: 'admin#teplo'
  get '/gvs.html', to: 'admin#gvs'
  get '/blanks.html', to: 'admin#blanks'
  get '/polozhenie.html', to: 'admin#polozhenie'
  get '/plan.html', to: 'admin#plan'
  get '/today.html', to: 'admin#today' 
  get '/arhive.html', to: 'admin#arhive'
  get '/dogovora.html', to: 'admin#dogovora'

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
