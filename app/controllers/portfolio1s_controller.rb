class Portfolio1sController < ApplicationController
  before_action :set_portfolio, only: [:edit, :update, :show, :destroy]

  def index
    @portfolios_items = Portfolio1.all
  end

  def new
    @portfolio_item = Portfolio1.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio1.new(portfolio_params)
    if @portfolio_item.save
      redirect_to portfolio1s_path, notice: 'New Portfolio Item'
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @portfolio_item.update(portfolio_params)
      redirect_to portfolio1s_path, notice: 'Successfully Updated'
    else
      render 'edit'
    end
  end

  def destroy
    if @portfolio_item.destroy
      redirect_to portfolio1s_path, notice: 'Record Removed!'
    end
  end

  private

  def portfolio_params
    params.require(:portfolio1).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end

  def set_portfolio
    @portfolio_item = Portfolio1.find(params[:id])
  end
end