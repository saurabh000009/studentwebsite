Rails.application.routes.draw do
  get 'students/list'
  resources :students

  get "student/list" , to: "students#list"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
