class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :check_name

  def check_name
  	if session[:requester].nil?
  		if params["requester"].nil?
  			redirect_to '/login.html'
  		else
  			p params["requester"]
  			session[:requester] = params["requester"]
  			redirect_to '/'
  		end
    else
      if session[:requester] == 'Govic'
        @is_root = true
      else
        @is_root = false
      end
  	end
  end
end
