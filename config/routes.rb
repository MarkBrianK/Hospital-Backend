Rails.application.routes.draw do
  resources :pharmacies
  resources :accountants
  resources :staffs
  resources :tickets
  resources :patients
  resources :doctors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
