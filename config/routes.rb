Rails.application.routes.draw do
  post 'works/index'
  get 'works/index'
  
  root 'works#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
