Rails.application.routes.draw do

  root 'homes#index'
  get "homes/info" => 'homes#info', :as => :info
  scope "(:locale)", locale: /en|nl/ do
    resources :homes
    get '/:locale' => 'homes#index'
  end
  match ':controller(/:action(/:id))', :via => [:get,:post]

end
