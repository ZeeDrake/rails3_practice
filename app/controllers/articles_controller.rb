class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])
    @category = Category.all
    @author = Author.all
  end

  def edit
      @article = Article.find(params[:id]) 
  end

  def new
    @article = Article.new
    @category = Category.all
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to articles_path, :notice => "Article has been saved"
    else
      render "new"
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to article_path, :notice => "Your article has been updated"
    else
      render "edit"
    end 
  end

  def destory
    @article = Article.find(params[:id])
    @article.destory
    redirect_to articles_path, :notice => "Your article has been deleted"
 
    
  end
end
