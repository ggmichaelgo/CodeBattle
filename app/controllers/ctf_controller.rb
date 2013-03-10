class CtfController < ApplicationController
	def index

	end

	def detail
		@ctf = Ctf.find(params[:id])
		
	end	
end
