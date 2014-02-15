BellaDonna::Application.routes.draw do

  root :to => "static_pages#index"
  get '/about' => 'static_pages#about', :as => :about
  get '/products' => 'static_pages#products', :as => :products
  get '/services' => 'static_pages#services', :as => :services
  get '/policies' => 'static_pages#policies', :as => :policies
  get '/contact' => 'static_pages#contact', :as => :contact

  
end
