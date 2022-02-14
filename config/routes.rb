Rails.application.routes.draw do
  root "todos#index"
  get "todos/all"
	put "todos/update"
end
