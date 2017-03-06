Rails.application.routes.draw do

  namespace :api do
    namespace :v2 do
      get "/foods", to: 'foods#index'
      post "/foods", to: 'foods#create'
      patch "/foods/:id", to: 'foods#update'
      get "/foods/:id", to: 'foods#show'
      delete "/foods/:id", to: 'foods#destroy'
    end
  end

  get "/foods", to: 'foods#index'
  # delete "/foods/:id", to: 'foods#destroy'
end
