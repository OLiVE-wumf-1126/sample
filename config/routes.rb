Rails.application.routes.draw do
  
  devise_for :users,
     controllers: { registrations: 'users/registrations',
                    sessions: 'users/sessions' }
  resources :items do

  end
  resources :category, only:[:index,:show]
  controllers: { registrations: 'users/registrations',
    sessions: 'users/sessions' }
    resources :items, except: [:edit, :update, :destroy]
      collection do
        get 'get_category_children', defaults: { format: 'json' }
        get 'get_category_grandchildren', defaults: { format: 'json' }
      end
    resources :category, only:[:index,:show]
    resources :users, only: [:show]
    resources :buyers, only:[:show]
  root 'items#index'

end

