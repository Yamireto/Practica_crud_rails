Rails.application.routes.draw do
  get 'courses/', to: 'courses#index'
  get 'courses/new', as: 'courses_new'
  #get 'courses/:id', to: 'courses#show', as: 'show_course'
  get 'courses/:id', to: 'courses#show', as: 'courses_show'
  get 'courses/:id/edit', to: 'courses#edit', as: 'courses_edit'

  post 'courses/', to: 'courses#create', as: 'courses_create'
  patch 'courses/:id/', to: 'courses#update', as: 'courses_update'

  delete 'courses/:id', to: 'courses#destroy', as: 'courses_delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
