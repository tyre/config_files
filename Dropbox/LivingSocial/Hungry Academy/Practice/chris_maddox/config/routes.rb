ChrisMaddox::Application.routes.draw do
  namespace :blog do
    resources :articles
  end
end
