class PlayersController < ApplicationController
    before_filter :authorize,  only: [:edit, :update, :show, :create, :new, :destroy] 
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player])
    if @player.save
      redirect_to @player, :notice => "Spiller lagt til"
    else
      render :action => 'new'
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(params[:player])
      redirect_to @player, :notice  => "Spiller oppdatert"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_url, :notice => "Spiller slettet"
  end
end
