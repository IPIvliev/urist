Urist::Application.routes.draw do

  resources :apeals


  get "users/profile"

  devise_for :users
  resources :users

# Страницы главного меню
  get "/index.html", to: "static_pages#index"
  get "/contact.html", to: "static_pages#contact"
  get "/services.html", to: "static_pages#services"
  get "/blog.html", to: "static_pages#blog"
  get "/about.html", to: "static_pages#about"

 # Главная страница
  root :to => 'static_pages#index'
end
