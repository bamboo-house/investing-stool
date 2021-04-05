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
    
    @current_index = "PER"
  end

  def stock_pbr
    stock_price = params[:stock_price].to_f
    bps = params[:bps].to_f

    market_cap = params[:market_cap].to_f
    net_assets = params[:net_assets].to_f

    @result_pbr1 = (stock_price / bps).round(2)
    @result_pbr2 = (market_cap / net_assets).round(2)
    
    @current_index = "PBR"
  end

  def stock_pcfr
    stock_price = params[:stock_price].to_f
    cfps = params[:cfps].to_f

    market_cap = params[:market_cap].to_f
    operating_cashflows = params[:operating_cashflows].to_f

    @result_pcfr1 = (stock_price / cfps).round(2)
    @result_pcfr2 = (market_cap / operating_cashflows).round(2)
  
    @current_index = "PCFR"
  end

  def stock_roe
    net_income = params[:net_income].to_f
    net_assets= params[:net_assets].to_f

    eps = params[:eps].to_f
    bps = params[:bps].to_f

    @result_roe1 = (net_income / net_assets).round(4) * 100 
    @result_roe2 = (eps / bps).round(4) * 100 
    
    @current_index = "ROE"
  end

  def stock_roa
    net_income = params[:net_income].to_f
    total_assets= params[:total_assets].to_f

    @result_roa1 = (net_income / total_assets).round(4) * 100 
    
    @current_index = "ROA"
  end

  
end
