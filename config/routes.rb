Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :meetups
    end
  end

  get '/', to: 'home#search'
end
