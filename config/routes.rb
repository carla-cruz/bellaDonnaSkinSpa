BellaDonna::Application.routes.draw do

  devise_for :users
  root :to => "static_pages#index"
  get '/about' => 'static_pages#about', :as => :about
  get '/contact' => 'static_pages#contact', :as => :contact

  resources :products do 
    resources :catgories 
  end

  resources :policies
  resources :services
  resources :service_types

  resources :inquiries, :only => [:new, :create] do
    get 'thank_you', :on => :collection
  end

  resources :appointments

  resources :promotions
  get '/promotions/:id/activate_promotion' => 'promotions#activate_promotion', :as => :activate_promotion
end


