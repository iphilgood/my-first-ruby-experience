class CommentsController < ApplicationController
  respond_to :html
  before_filter :prepare_resources
  
  def create
    @blog_post.comments.build(params[:comment])
    if @blog_post.save
      flash[:notice] = 'Commment is successfully created'
    else
      flash[:error] = "Comment can't be created..."
    end
    respond_with(@blog_post)
  end
  
  
  private
  def prepare_resources
    @blog_post = BlogPost.find(params[:blog_post_id])
  end
end
