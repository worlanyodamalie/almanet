Rails.application.routes.draw do

  get 'organisations/index'

   devise_for :organisations, :controllers => { registrations: 'registrations' }
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'organisations#index'
end
