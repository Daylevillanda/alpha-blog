class ArticlesController < ApplicationController

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = 'Article was successfully updated'
      redirect_to @article
    else
      render 'edit'
    end
  end
  
  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      flash[:notice] = 'Article was successfully created'
      redirect_to @article
    else
      render 'new'
    end
  end

  def new
    @article = Article.new
  end

  def index
    @articles = Article.all
  end

  def show
    # byebug
    @article = Article.find(params[:id])
  end
end
