class SessionsController < ApplicationController
  def new
  end
  
def create
  user = User.find_by_email(params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to "/admin", :notice => "Logged in som " + user.fname
  else
    
    redirect_to "/login", :notice => "Feil brukernavn eller passord"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end
end
