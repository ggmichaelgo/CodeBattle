class RegistrationsController < Devise::RegistrationsController
	skip_before_filter :authenticate
	def new
		@user = User.new
	end

	def create
		super
		if @user.save
			@user.build_user_info 
			@user.user_info.save
		end
	end
end	