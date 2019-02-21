Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users, :only => [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'lessons#index' #ログイン後に遷移する画面
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  
  resources :lessons do
    collection do
      post :confirm
      get :"own"
    end
    member do
      get :"show_reservations"
    end
  end
  
  resources :reservations , :only => [:new, :index, :create, :destroy]
  
  resources :conversations do
    resources :messages
  end
  
  resources :accounts, :only => [:new, :index]
  
end
