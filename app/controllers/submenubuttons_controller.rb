class SubmenubuttonsController < ApplicationController
  def index
    @submenubuttons = Submenubutton.all
  end

  def show
    @submenubutton = Submenubutton.find(params[:id])
  end

  def new
    @submenubutton = Submenubutton.new
  end

  def create
    @submenubutton = Submenubutton.new(params[:submenubutton])
    if @submenubutton.save
      redirect_to @submenubutton, :notice => "Successfully created submenubutton."
    else
      render :action => 'new'
    end
  end

  def edit
    @submenubutton = Submenubutton.find(params[:id])
  end

  def update
    @submenubutton = Submenubutton.find(params[:id])
    if @submenubutton.update_attributes(params[:submenubutton])
      redirect_to @submenubutton, :notice  => "Successfully updated submenubutton."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @submenubutton = Submenubutton.find(params[:id])
    @submenubutton.destroy
    redirect_to submenubuttons_url, :notice => "Successfully destroyed submenubutton."
  end
end
