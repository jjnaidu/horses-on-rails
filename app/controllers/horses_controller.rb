class HorsesController < ApplicationController
  include ApplicationHelper

  def new
    @user = User.find(session[:user_id])
    @horse = Horse.new
  end

  def edit
    if current_user
      @horse = Horse.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def create
    @user = User.find(session[:user_id])
    @horse = @user.horses.new(horse_params)

    if @horse.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    @horse = Horse.find(params[:id])
  end

  def update
    @horse = Horse.find(params[:id])
    @user = @horse.user

    if @horse.update(horse_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    horse = Horse.find(params[:id])
    @user = horse.user
    horse.destroy
    redirect_to user_path(@user)
  end

private

  def horse_params
    params.require(:horse).permit(:name, :breed, :age)
  end

end
