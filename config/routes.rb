Rails.application.routes.draw do
  get 'home_pages/home'

  get 'home_pages/about'

  root 'home_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end