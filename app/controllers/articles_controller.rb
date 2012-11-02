class ArticlesController < ApplicationController
  before_filter :authorize,  only: [:update,:create, :new, :edit, :destroy]
  def index
    @articles = Article.order("created_at DESC").page(params[:page]).per_page(7)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    render :layout => 'admin'
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to @article, :notice => "Successfully created article."
    else
      render :action => 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
    render :layout => 'admin'
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to @article, :notice  => "Successfully updated article."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_url, :notice => "Successfully destroyed article."
  end
end
