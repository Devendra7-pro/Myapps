Rails.application.routes.draw do
	root "articles#home"
	get 'about', to: 'articles#about'
	resources :articles
	# get '/index', to: 'articles#index'
	# get '/articles', to: 'articles#new'
	# post 'articles', to: 'articles#create'
	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
