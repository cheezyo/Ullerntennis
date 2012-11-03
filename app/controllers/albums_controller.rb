class AlbumsController < ApplicationController
  before_filter :authorize,  only: [:update,:create, :new, :edit, :destroy]
  def index
    @albums = Album.all

  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to @album, :notice => "Album opprettet"
    else
      render :action => 'new'
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(params[:album])
      redirect_to @album, :notice  => "Album oppdatert"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to '/albumadmin/', :notice => "Album slettet"
  end
end
