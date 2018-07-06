class Portfolio1sController < ApplicationController

  def index
    @portfolios_items = Portfolio1.all
  end

  def new
    @portfolio_item = Portfolio1.new
  end

  def create
    @portfolio_item = Portfolio1.new(portfolio_params)
    if @portfolio_item.save
      redirect_to portfolio1s_path, notice: 'New Portfolio Item'
    else
      render 'new'
    end

    def show
    end
  end


  private

  def portfolio_params
    params.require(:portfolio1).permit(:title, :subtitle, :body)
  end
end