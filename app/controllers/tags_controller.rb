class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]
  
  def destroy
    
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path
    
  end

    
  def update 
    @article = Article.find(params[:id])
    @article.update(article_params)
    flash.notice = "article '#{@article.title}' updated!"
    redirect_to article_path(@article)
  end
  

  
  
  def index
    
    @tags = Tag.all
    @tags = Tag.all
    
  end
  
  
  def show
    @tag = Tag.find(params[:id])
    
  end
end
