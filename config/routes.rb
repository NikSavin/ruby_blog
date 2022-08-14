Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  get 'about_me', to: 'home#about_me'
  get '/home/(:hello)', to: 'home#index'
end
