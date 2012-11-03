class MenubuttonsController < ApplicationController
  before_filter :authorize,  only: [:update,:create, :new, :edit, :destroy, :show, :index]
  def index
    @menubuttons = Menubutton.all
  end

  def show
        @menubutton = Menubutton.find(params[:id])
        render :layout => 'admin'

  end

  def new
    @menubutton = Menubutton.new
  end

  def create
    @menubutton = Menubutton.new(params[:menubutton])
    if @menubutton.save
      redirect_to @menubutton, :notice => "Nytt menypunkt opprettet"
    else
      render :action => 'new'
    end
  end

  def edit
    @menubutton = Menubutton.find(params[:id])
  end

  def update
    @menubutton = Menubutton.find(params[:id])
    if @menubutton.update_attributes(params[:menubutton])
      redirect_to @menubutton, :notice  => "Menypunkt oppdatert"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @menubutton = Menubutton.find(params[:id])
    @menubutton.destroy
    redirect_to menubuttons_url, :notice => "Menypunkt slettet"
  end
end
