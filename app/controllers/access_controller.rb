class AccessController < ApplicationController
	def index
		render('menu')
	end
	
	def menu
		# display text $ links
	end
	
	def login
	# login from
	end
	
	def attempt_login
		authorized_user = Client.authenticate(params[:username], params[:password])
			if authorized_user
				#mark user as logged in
				flash[:notice] = "You are logged in."
				redirect_to(:action => 'menu')
			else
				flash[:notice] = "Invalid username/password combination."
				redirect_to(:action => 'login')
			end
	end
	
	def logout
		flash[:notice] = "You have been logged out."
		redirect_to(:action => 'login')
	end
end
