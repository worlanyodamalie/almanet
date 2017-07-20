Rails.application.routes.draw do

  get 'events/index'

  get 'membershipdata/index'

  # get 'static_pages/home'

  # get 'organisations/index'

   devise_for :organisations, :controllers => { registrations: 'registrations' }
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  get '/home', to: 'static_pages#home'

  resources :membershipdata do
    collection do
      get :members
      post :import
    end
  end

 resources :events

  resources :organisations do
    collection do
       get :email
       get :sms
       get :send_message
       post :send_sms
       get :send_email
       #post :send_email
    end
     resources :membershipdata

     resources :events

  end

  devise_scope :organisation do
     get '/dashboard', to: 'organisations#index'
  end


end
