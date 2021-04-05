Rails.application.routes.draw do
  # get 'home/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/" => "home#top"
  get "stock_per" => "home#stock_per"
  get "stock_pbr" => "home#stock_pbr"
  get "stock_pcfr" => "home#stock_pcfr"
  get "stock_roe" => "home#stock_roe"
  get "stock_roa" => "home#stock_roa"
  
  post "stock_per" => "home#stock_per"
  post "stock_pbr" => "home#stock_pbr"
  post "stock_pcfr" => "home#stock_pcfr"
  post "stock_roe" => "home#stock_roe"
  post "stock_roa" => "home#stock_roa"

end
