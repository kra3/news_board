class CommentsController < ApplicationController
  def create
    @news = News.find(params[:news_id])
    @comment = current_user.comments.create(comment_params.merge(:news => @news))
    redirect_to news_path(@news)
  end

  def destroy
    @news = News.find(params[:news_id])
    @comment = @news.comments.find(params[:id])
    @comment.destroy
    redirect_to news_path(@news)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
