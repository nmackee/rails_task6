class UsersController < ApplicationController
  # １ページの表示数
  PER_PAGE = 20
  
  def index
    # ページネーションの設定
    @q = User.ransack(params[:q])
    @users = @q.result.page(params[:page]).per(PER_PAGE)
  end
end
