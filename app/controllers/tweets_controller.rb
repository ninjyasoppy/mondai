class TweetsController < ApplicationController
  before_action :admin_user, only: [:create, :edit ,:update, :destroy]
  before_action :tweet_find, only: [:show, :edit ,:update, :destroy]
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    if @tweet.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def rental
    
  end

  private
  def tweet_params
    params.require(:tweet).permit(:car_name, :price, :sales_point, :model_year, :mileage, :inspection, :image)
  end

  def admin_user
    unless user_signed_in? && current_user.admin
      redirect_to root_path
    end
  end

  def tweet_find
    @tweet = Tweet.find(params[:id])
  end
end