Rails.application.routes.draw do
  get 'home/home'

  get 'home/contact'

  get 'home/about'

  get 'home/information'

  get 'home/data'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
