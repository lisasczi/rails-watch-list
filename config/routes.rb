Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookmarks do
    resources :lists, only: [:new, :create, :destroy]
  end

  resources :lists do
    resources :bookmarks, only: [:index, :new, :show, :create]
  end

end
