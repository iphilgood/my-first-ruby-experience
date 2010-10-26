class HomeController < ApplicationController
  
  def show
    @blog_posts = BlogPost.latest_5_elements
    @comments = Comment.latest_5_elements
  end
  
end
