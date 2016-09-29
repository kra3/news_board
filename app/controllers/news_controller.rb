class NewsController < ApplicationController
  def index
    @all_news = News.all
  end

  def new
    @news = News.new
  end

  def show
    @news = News.find(params[:id])
  end

  def create
    @news = News.new(news_params)

    if @news.save
      redirect_to @news
    else
      render 'new'
    end
  end

  def edit
    @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])

    if @news.update(news_params)
      redirect_to @news
    else
      render 'edit'
    end
  end

  private
    def news_params
      params.require(:news).permit(:title, :content)
    end
end
