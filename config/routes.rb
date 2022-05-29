Rails.application.routes.draw do
 # get 'categories/index'
  #get 'categories/new'
  #post 'categories/create'
  #get 'categories/show'
  #get 'categories/edit'
  #patch 'categories/update'
  #delete 'categories/destroy'
  resources :categories

  #Aquí comienza el ejercicio cursos
  get 'courses/', to: 'courses#index'
  get 'courses/new', as: 'courses_new'
  #get 'courses/:id', to: 'courses#show', as: 'show_course'
  get 'courses/:id', to: 'courses#show', as: 'courses_show'
  get 'courses/:id/edit', to: 'courses#edit', as: 'courses_edit'

  post 'courses/', to: 'courses#create', as: 'courses_create'
  patch 'courses/:id/', to: 'courses#update', as: 'courses_update'

  delete 'courses/:id', to: 'courses#destroy', as: 'courses_delete'


  #Aqui comienza en ejercicio de video
  
  get 'videos/', to: 'videos#index'
  get 'videos/new', as: 'videos_new'
  get 'videos/:id', to: 'videos#show', as: 'videos_show'
  get 'videos/:id/edit', to: 'videos#edit', as: 'videos_edit'

  post 'videos/', to: 'videos#create', as: 'videos_create'
  patch 'videos/:id/', to: 'videos#update', as: 'videos_update'

  delete 'videos/:id', to: 'videos#destroy', as: 'videos_delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
