class TradesController < ApplicationController
  before_filter :signed_in_user
  before_filter :correct_user, only: [:edit, :destroy]

  def index
    @trades = current_user.trades.paginate(page: params[:page])
  end

  def create
    @trade = current_user.trades.build(params[:trade])
    if @trade.save
      flash[:success] = "Trade saved!"
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end

  def new
    @trade = current_user.trades.build
  end

  def edit
    @trade = Trade.find(params[:id])
  end

  def update
    @trade = Trade.find(params[:id])

    respond_to do |format|
      if @trade.update_attributes(params[:trade])
        flash[:success] = "Trade updated!"
        format.html { redirect_to @trade, notice: 'Trade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trade.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @trades = current_user.trades.paginate(page: params[:page])
  end

  def destroy
    @trade.destroy
    redirect_to root_url
  end

  private
    
    def correct_user
      @trade = current_user.trades.find_by_id(params[:id])
      redirect_to root_url if @trade.nil?
    end
end
