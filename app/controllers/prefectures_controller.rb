class PrefecturesController < ApplicationController
  def index
    @prefectures = Prefecture.all
  end

  def show
    @prefecture = Prefecture.find(params[:id])
    
    if logged_in?
      @post = current_user.posts.build
      @posts = @prefecture.posts.order(id: :desc).page(params[:page]).per(5)
    end
    
    @users = User.find(params[:id])
  end
end
