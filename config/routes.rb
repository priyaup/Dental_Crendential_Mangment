Rails.application.routes.draw do
  get 'locations/index'
  get 'home', to: 'home#index'


  resources :locations do
    member do
      get 'edit_corporate'
      get 'edit_technical'
      get 'location_specification'
      get 'services'
      get 'miscellaneous'
      get 'liability'
      get 'save' 
       patch 'save_data', action: :save_location
    end
  end


end



