module SessionsHelper

    def log_in(user)
       #Logs in given user
       session[:user_id] = user.id
    end

    #returns the current user if any
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    #returns true if the user is logged in
    def logged_in?
       !current_user.nil? 
    end
    
    #logs out user
    def log_out
       session.delete(:user_id)
       @current_user = nil
    end

end
