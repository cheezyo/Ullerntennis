class ContactinfosController < ApplicationController
  def index
    @contactinfos = Contactinfo.all
  end

  def show
    @contactinfo = Contactinfo.find(params[:id])
  end

  def new
    @contactinfo = Contactinfo.new
  end

  def create
    @contactinfo = Contactinfo.new(params[:contactinfo])
    if @contactinfo.save
      redirect_to '/admin', :notice => "Kontaktinfo opprettet"
    else
      render :action => 'new'
    end
  end

  def edit
    @contactinfo = Contactinfo.find(params[:id])
  end

  def update
    @contactinfo = Contactinfo.find(params[:id])
    if @contactinfo.update_attributes(params[:contactinfo])
      redirect_to '/admin', :notice  => "Kontaktinfo oppdatert"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @contactinfo = Contactinfo.find(params[:id])
    @contactinfo.destroy
    redirect_to '/admin', :notice => "Kontaktinfo slettet"
  end
end
