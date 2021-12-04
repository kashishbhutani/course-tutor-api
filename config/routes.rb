Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :courses do
        resources :tutors
      end
    end
  end

  root to: 'courses#index'
end
