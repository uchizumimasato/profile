class TextsController < ApplicationController
  before_action :user_params
  before_action :texts, except: :index

  def index
    @texts = Text.all
  end

  def new
    @text = Text.new
  end

  def create
    Text.create(text_params)
    redirect_to @user 
  end

  def edit
    @text = Text.find(params[:id])
  end

  def update
    text = Text.find(params[:id])
    text.update(text_params) if text.user.id == current_user.id
    redirect_to @user
  end

  def destroy
    text = Text.find(params[:id])
    text.destroy if text.user.id == current_user.id
    redirect_to @user
  end

  private

  def text_params
    params.require(:text).permit(:tag, :text).merge(user_id: current_user.id)
  end

  def user_params
    @user = User.find(1)
  end

  def texts
    @texts = Text.all
  end
end
