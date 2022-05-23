Rails.application.routes.draw do
  get 'courses/', to: 'courses#index'
  get 'courses/new'
  #get 'courses/:id', to: 'courses#show', as: 'show_course'
  get 'courses/:id', to: 'courses#show', as: 'courses_show'
  get 'courses/:id/edit', to: 'courses#edit', as: 'courses_edit'
  post 'courses/', to: 'courses#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
