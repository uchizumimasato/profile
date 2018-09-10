class UsersController < ApplicationController
  before_action :move_sign_in

	def show
		@user = current_user
    @texts = @user.texts
	end

  private
  def move_sign_in
    redirect_to new_user_session_path unless user_signed_in?
  end
end
