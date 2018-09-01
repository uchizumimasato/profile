class TextsController < ApplicationController
  before_action :user_params

  def index
    @texts = Text.all
  end

  def new
    @text = Text.new
  end

  def create
    Text.create(text_params)
    redirect_to texts_path
  end

  def edit
    @text = Text.find(params[:id])
  end

  def update
    text = Text.find(params[:id])
    text.update(text_params)
    redirect_to user = User.find(1)
  end

  def destroy
    text = Text.find(2)
    text.destroy
  end

  private
  def text_params
    params.require(:text).permit(:tag, :text)
  end

  def user_params
    @user = User.find(1)
  end
end
