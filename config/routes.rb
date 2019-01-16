Rails.application.routes.draw do

  resource :user, only: [:create]
  resource :url, only: [:create] 
  RouteReload.reload!
end
