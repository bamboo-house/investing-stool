Rails.application.routes.draw do
  # get 'home/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/" => "home#top"
  get "stock_per" => "home#stock_per"
  post "stock_per" => "home#stock_per"
  get "stock_pbr" => "home#stock_pbr"
  post "stock_pbr" => "home#stock_pbr"
  get "stock_roe" => "home#stock_roe"
  post "stock_roe" => "home#stock_roe"

end
