class TweetsController < ApplicationController
  before_filter :signed_in_user , only: [:create, :destroy]
  before_filter :correct_user, only: :destroy

  def create
    @tweet = current_user.tweets.build(params[:tweet])
    if @tweet.save
      flash[:success] = "Posted!"
      redirect_to root_path
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @tweet.destroy
    redirect_to root_url
  end

  private

    def correct_user
      @tweet = current_user.tweets.find_by_id(params[:id])
      redirect_to root_url if @tweet.nil?
    end
end
