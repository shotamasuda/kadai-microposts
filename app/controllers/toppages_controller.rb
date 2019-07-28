class ToppagesController < ApplicationController
  def index
    if logged_in?
      # 投稿用の空のインスタンスを用意
      @micropost = current_user.microposts.build  # form_with 用
      # 一覧表示用のインスタンスを用意
      @microposts = current_user.feed_microposts.order(id: :desc).page(params[:page])
    end
  end
end