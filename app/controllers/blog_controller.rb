class BlogController < ApplicationController
  def index
    @blog_posts = BlogPost.all
  end
end
