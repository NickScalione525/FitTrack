class SessionsController < ApplicationController

def home

end


def destroy
    session.clear
    redirect_to '/'
end

def create
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
        session[:user_id] =user.id
        redirect_to user_path(user)
    else
        flash[:message] = "Login info incorrect, please try again."
        redirect_to "/login"
    end
end



end