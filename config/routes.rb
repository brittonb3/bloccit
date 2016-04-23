Rails.application.routes.draw do
  resources :topics do
  resources :posts, except: [:index]
  end

   resources :users, only: [:new, :create]

post 'user/confirm' => 'users#confirm'

get 'about' => 'welcome#about'

  root 'welcome#index'

end
