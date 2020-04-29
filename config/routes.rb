Rails.application.routes.draw do
  get 'file_uploads/new'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products do
   resources :file_uploads, only: [:new, :create, :destroy]
  end
  get '/product/inputs' => 'products#inputs'
  get '/product/promotions' => 'products#promotions'
  resources :categories
  root :to => 'products#inputs'
  resources :contact, only: :index
  resources :about, only: :index

   #get '404', :to => 'application#page_not_found'
   match '/404', to: 'errors#not_found', :via => :all
   match '/422', to: 'errors#unacceptable', :via => :all
   match '/500', to: 'errors#internal_error', :via => :all
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end