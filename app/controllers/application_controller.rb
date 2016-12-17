class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :check_name, :except => [:login]

  def check_name
    if not params["reboot"].nil?
      session.clear
      redirect_to '/login.html'
    else
    	if session[:requester].nil? or session[:requester].empty?
    		if params["requester"].nil? or params[:requester].empty?
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

  def login
    render layout: 'light'
  end

end
