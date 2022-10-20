Rails.application.routes.draw do
  resources :users
  resources :accountants
  resources :lab_technicians
  resources :staffs
  resources :pharmacies
  resources :doctors
  resources :patients
  resources :tickets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
