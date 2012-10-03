class SubpagesController < ApplicationController
  def index
    @subpages = Subpage.all
  end

  def show
    @subpage = Subpage.find(params[:id])
  end

  def new
    @subpage = Subpage.new
  end

  def create
    @subpage = Subpage.new(params[:subpage])
    if @subpage.save
      redirect_to @subpage, :notice => "Successfully created subpage."
    else
      render :action => 'new'
    end
  end

  def edit
    @subpage = Subpage.find(params[:id])
  end

  def update
    @subpage = Subpage.find(params[:id])
    if @subpage.update_attributes(params[:subpage])
      redirect_to @subpage, :notice  => "Successfully updated subpage."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @subpage = Subpage.find(params[:id])
    @subpage.destroy
    redirect_to subpages_url, :notice => "Successfully destroyed subpage."
  end
end
