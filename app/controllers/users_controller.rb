class UsersController < ApplicationController

	def view_profile

		@user = User.find_by_username(params[:username])
		#@twets = Twet.find(:all)
		#@user_mentioned_twets = @twets.find(:content, :conditions => ["content = ? ", @user.username])
		#Rails.logger.debug "Debug message: #{@user_mentioned_twets.content}" #simple way of hooking into request log-cycle
		#render template: 'profile/index' #method for expliciting saying what you want to render
		#render text: @username #renders a string
		if @user
			
		else 
			render text: 'This user doesnt exist'
		end
		
	end



end