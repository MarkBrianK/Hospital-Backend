Rails.application.routes.draw do
  resources :reg_form_patients
  resources :reg_forms
  resources :staffs
  resources :patients
  resources :reg_form_patients
  resources :reg_forms
  # resources :users
  resources :managers


  devise_for :accountants, path: 'accountant', path_names:{
    sign_in: 'signin',
    sign_out: 'signout',
    registration: 'signup'
  }, controllers:{
    sessions: 'accountants/sessions',
    password: 'accountants/passwords',
    registrations:'accountants/registrations'
  }


  devise_for :laboratories, path: 'laboratory', path_names:{
    sign_in: 'signin',
    sign_out: 'signout',
    registration: 'signup'
  }, controllers:{
    sessions: 'laboratories/sessions',
    password: 'laboratories/passwords',
    registrations:'laboratories/registrations'
  }


  devise_for :pharmacies, path: 'pharmacy', path_names:{
    sign_in: 'signin',
    sign_out: 'signout',
    registration: 'signup'
  }, controllers:{
    sessions: 'pharmacies/sessions',
    password: 'pharmacies/passwords',
    registrations:'pharmacies/registrations'
  }


  devise_for :doctors, path: 'doctors', path_names:{
    sign_in: 'signin',
    sign_out: 'signout',
    registration: 'signup'
  }, controllers:{
    sessions: 'doctors/sessions',
    password: 'doctors/passwords',
    registrations:'doctors/registrations'
  }
  

  devise_for :managers, path: 'managers', path_names:{
    sign_in: 'signin',
    sign_out: 'signout',
    registration: 'signup'
  }, controllers:{
    sessions: 'managers/sessions',
    password: 'managers/passwords',
    registrations:'managers/registrations'
  }

  # resources :users
  devise_for :admins, path: 'admin', path_names:{
    sign_in: 'signin',
    sign_out: 'signout',
    registration: 'signup'
  }, controllers:{
    sessions: 'admin/sessions',
    password: 'admin/passwords',
    registrations: 'admin/registrations'
  }

  devise_for :users, path: 'users', path_names:{
    sign_in: 'signin',
    sign_out: 'signout',
    registration: 'signup'
  }, controllers:{
    sessions: 'users/devise/sessions',
    password: 'users/devise/passwords',
    registrations: 'users/devise/registrations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
