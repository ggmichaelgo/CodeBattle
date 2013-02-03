class RegistrationsController < Devise::RegistrationsController
	skip_before_filter :authenticate
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		@user.build_user_info		
		@user.save
		redirect_to '/'
	end
end	