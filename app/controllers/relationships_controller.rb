class RelationshipsController < ApplicationController
   # 4⃣フォローするとき
  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end
  # 4⃣フォロー外すとき
  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end
  # 4⃣フォロー一覧
  def followings
    @user = User.find(params[:user_id])
    @users_relationship = @user.followings
  end
  # 4⃣フォロワー一覧
  def followers
    @user = User.find(params[:user_id])
    @users_relationship = @user.followers
  end
end
