Rails.application.routes.draw do
  get 'order/index'
  get 'order/show'
  get 'cart/index'
  get 'cart/show'
  get 'cart/create'
  get 'cart/new'
  get 'cart/edit'
  get 'cart/destroy'
  get 'products/index'
  get 'products/show'

  namespace :admin do
    resources :products
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
