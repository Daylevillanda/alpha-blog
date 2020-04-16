class ArticlesController < ApplicationController
  def create
  end

  def new
  end

  def index
    @articles = Article.all
  end

  def show
    # byebug
    @article = Article.find(params[:id])
  end
end
