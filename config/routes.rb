Rails.application.routes.draw do

  root "tasks#index"
    resources :tasks, except: :show do
    member do
      post "done", to: "tasks#change_status"
    end
  end
end