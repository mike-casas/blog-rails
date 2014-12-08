class ArticlesController < ApplicationController
  def index
      @articles= Article.all
  end

  def new
    @article=Article.new
  end
  def create
   @article=Article.new(parametros)
   if @article.save
   redirect_to @article
   else
    render 'new'
   end
  end

  def show
    @article=Article.find(params[:id])
  end
private
  def parametros
    params.require(:article).permit(:title,:text)
  end


end
