class Portfolio1sController < ApplicationController

  def index
    @portfolios_items = Portfolio1.all
  end
end
