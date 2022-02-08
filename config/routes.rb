Rails.application.routes.draw do
  get 	'todos/index'
	root 	'todos#index'
	get 	'todos/all'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
