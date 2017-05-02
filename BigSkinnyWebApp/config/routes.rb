Rails.application.routes.draw do
  get '' => 'home#index', as: :index

  get 'contact' => 'home#contact', as: :contact

  get 'about' => 'home#about', as: :about

  get 'information' => 'home#information', as: :information

  get 'data' => 'home#data', as: :data

  get 'cart' => 'home#cart', as: :cart
  post 'cart' => 'home#checkout', as: :checkout

  get 'download_pdf' => 'home#download_pdf'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
