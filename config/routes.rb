Rails.application.routes.draw do

  namespace :api do
    namespace :v2 do
      get "/foods", to: 'foods#index'
      post "/foods", to: 'foods#create'
      patch "/foods/:id", to: 'foods#update'
    end
  end
end
