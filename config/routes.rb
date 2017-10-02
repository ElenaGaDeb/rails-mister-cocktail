Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses
  end

  resources :doses, only: [:create, :new, :delete]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
