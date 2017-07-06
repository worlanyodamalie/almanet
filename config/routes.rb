Rails.application.routes.draw do

  # get 'static_pages/home'

  # get 'organisations/index'

   devise_for :organisations, :controllers => { registrations: 'registrations' }
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  get '/home', to: 'static_pages#home'

  resources :organisations do
    collection do
       get :email
       get :event
    end
  end

  devise_scope :organisation do
     get '/dashboard', to: 'organisations#index'
  end


end
