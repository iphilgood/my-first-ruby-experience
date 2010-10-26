class Comment < ActiveRecord::Base
  belongs_to :blog_post
  
  scope :latest_5_elements, lambda{ order('created_at DESC').limit(5) }
end
