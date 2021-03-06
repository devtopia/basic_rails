Rails.application.routes.draw do
  get 'top/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index"
  get "about" => "top#about", as: "about"
  get "lesson/:action(/:name)" => "lesson"

  resources :members do
    collection { get "search" }
  end
end
