Rails.application.routes.draw do
  resources :family_members
  resources :members
  resources :plans
  resources :counties
  resources :relationships
  resources :membership_fees
  resources :statuses
  resources :roles
  resources :genders
  resources :states
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'


end
