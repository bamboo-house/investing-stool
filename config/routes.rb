Rails.application.routes.draw do
  # get 'home/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "Stool/home" => "home#top"
  get "Stool/home/stock_per" => "home#stock_per"
  post "Stool/home/stock_per" => "home#stock_per"
end
