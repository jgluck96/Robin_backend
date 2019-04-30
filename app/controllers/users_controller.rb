class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    user = User.create(user_params)

    if user.valid?
      token = encode_token(user.id)

      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {errors: 'Fill out correct info'}
    end
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :mobile, :password, :location, :age)
  end

end
