PhcdevworksRealEstate::Engine.routes.draw do

    # Applications Admin Area
    namespace :admin do
        resources :listings
        resources :features
    end

    # Applications User Area
    namespace :property do
        resources :listings
        resources :features
    end

    # Mount Routes
    mount PhcdevworksAccounts::Engine, :at => '/'
    mount PhcdevworksCoreModules::Engine, :at => '/'

end
