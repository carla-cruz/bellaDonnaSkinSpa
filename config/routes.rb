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
end
  

