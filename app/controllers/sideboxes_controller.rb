class SideboxesController < ApplicationController
  def index
    @sideboxes = Sidebox.all
    render :layout => 'admin'

  end

  def show
    @sidebox = Sidebox.find(params[:id])
  end

  def new
    @sidebox = Sidebox.new
  end

  def create
    @sidebox = Sidebox.new(params[:sidebox])
    if @sidebox.save
      redirect_to root_url, :notice => "Sideboks lagt til."
    else
      render :action => 'new'
    end
  end

  def edit
    @sidebox = Sidebox.find(params[:id])
  end

  def update
    @sidebox = Sidebox.find(params[:id])
    if @sidebox.update_attributes(params[:sidebox])
      redirect_to root_url, :notice  => "Sideboks oppdatert"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @sidebox = Sidebox.find(params[:id])
    @sidebox.destroy
    redirect_to sideboxes_url, :notice => "Sideboks slettet"
  end
end
