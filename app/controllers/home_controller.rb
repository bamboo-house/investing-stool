class HomeController < ApplicationController
  def top
  end

  def stock_per
    stock_price = params[:stock_price].to_f
    eps = params[:eps].to_f

    market_cap = params[:market_cap].to_f
    net_income = params[:net_income].to_f

    
    @result_per1 = (stock_price / eps).round(2)
    
    @result_per2 = (market_cap / net_income).round(2)
    
    

  end
  
end
