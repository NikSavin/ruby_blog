Rails.application.routes.draw do
  root 'home#index'
  get 'about_me', to: 'home#about_me'
end
