class ArticlesController < ApplicationController

before_action :authenticate_user!, :except => [:show, :index]




  def index
      @articles= Article.all
      @article_order= Article.last_article.limit(5)
  end

  def new
    @article=Article.new
  end
  def create
   @article=Article.new(parametros)
   @article.user_id = current_user.id
   if @article.save
   redirect_to @article
   else
    render 'new'
   end
  end

  def show
    @article=Article.find(params[:id])
  end

  def edit
    @article=Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(parametros)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
      @article= Article.find(params[:id])
      @article.destroy
      redirect_to articles_path
  end



private
  def parametros
    params.require(:article).permit(:title,:text)
  end


end
