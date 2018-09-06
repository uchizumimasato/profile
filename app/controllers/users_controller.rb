class UsersController < ApplicationController
	def show
		@user = User.find(1)
    @texts = Text.all
	end
end
