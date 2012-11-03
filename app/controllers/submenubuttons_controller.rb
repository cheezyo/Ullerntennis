class SubmenubuttonsController < ApplicationController
  before_filter :authorize,  only: [:edit, :update, :create, :new, :destroy]
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
      redirect_to "/admin", :notice => "Ny side lagt til"
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
      @menubutton = Menubutton.find(@submenubutton.menubutton_id)
      redirect_to @menubutton, :notice  => "Side oppdatert"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @submenubutton = Submenubutton.find(params[:id])
    @submenubutton.destroy
    redirect_to submenubuttons_url, :notice => "Side slettet"
  end
end
