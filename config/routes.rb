Rails.application.routes.draw do
  devise_for :publics
  devise_for :admins
  
  get '/home/about' => 'homes#about', as: 'about'
  
  
  namespace :admin do
    resources :items
  end
  
  scope module: :public do
     resources :items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end

