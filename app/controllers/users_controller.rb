class UsersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end
  
  def update
  @user = User.find(params[:id])
  if @user.update(user_params)
    # 更新成功時の処理
    redirect_to @user, notice: 'ユーザー情報を更新しました。'
  else
    # 更新失敗時の処理
    render :edit
  end
  end
  
  
  private
    def user_params
    params.require(:user).permit(:name, :age, :sex, :profile_photo)
    end
end
