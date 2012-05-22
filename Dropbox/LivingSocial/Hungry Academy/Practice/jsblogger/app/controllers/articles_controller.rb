class ArticlesController < ApplicationController
  
  before_filter :lookup_article, :only => [:show, :edit, :destoy, :update]
  respond_to :html, :json, :xml

  def index
    @articles = Article.all
    respond_with(@articles)
  end

  def show
    respond_with(@article)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(params[:article])
    flash[:message] = @article.save ? "Article '#{@article.title}' successfully created." : "Failed to save article"
    respond_with(@article)
  end
  
  def destroy
    article = Article.destroy(params[:id])
    flash[:message] = "Thanks for killing dreams!"
    redirect_to articles_path
  end

  def edit
  end

  def update
    @article.update_attributes(params[:article])
    flash[:message] = "'#{@article.title}' successfully updated!"
    redirect_to article_path(@article)
  end

  private
  def lookup_article
    @article = Article.find(params[:id])
  end
end
