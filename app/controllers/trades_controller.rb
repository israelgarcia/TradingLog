class TradesController < ApplicationController
  before_filter :signed_in_user

  def create
    @trades = current_user.trades.build(params[:trades])
    if @trades.save
      flash[:success] = "Trade saved!"
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
end
