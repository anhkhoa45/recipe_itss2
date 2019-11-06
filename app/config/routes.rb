Rails.application.routes.draw do
<<<<<<< HEAD
  get 'user/resource'
=======
  get 'admins/index'
>>>>>>> c777b89b538af5c1134409710a9d313ab8a1dcf5
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :recipes, only: [:index, :show]
  resources :comments
  get '/', action: :index, controller: 'homepage', as: 'home'
  
  get 'admin', action: :index, controller: 'admins'
  
  post 'password/forgot', action: :forgot, controller: 'passwords'
  post 'password/reset', action: :reset, controller: 'passwords'
  get 'password/reset', action: :reset_new_password, controller: 'passwords'

  post 'comments/reply', action: :create_reply, controller: 'comments'

  get 'profile', action: :profile, controller: 'users'
  post 'profile/update', action: :update_profile, controller: 'users'
  get 'profile/change-password', action: :change_password, controller: 'users'
  post 'profile/update-password', action: :update_password, controller: 'users'

  
#   Templates
#   get 'single', action: :single, controller: 'homepage'
#   get 'category-post', action: :category_post, controller: 'homepage'
#   get 'category', action: :category, controller: 'homepage'
#   get 'contact', action: :contact, controller: 'homepage'
#   get 'recipe', action: :recipe, controller: 'homepage'
end
