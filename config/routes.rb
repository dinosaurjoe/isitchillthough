Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :things do
      member do
        post 'upvote'
        post 'downvote'
      end
    end
end
