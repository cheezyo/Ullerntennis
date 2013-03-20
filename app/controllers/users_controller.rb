class UsersController < ApplicationController
  #before_filter :authorize
  def index
      
    @users = User.all
    render :layout => 'admin'
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
        
      redirect_to '/admin', :notice => "Bruker opprettet"
    else
      render :action => 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to '/admin', :notice  => "Bruker oppdatert"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/admin', :notice => "Bruker slettet"
  end
end
