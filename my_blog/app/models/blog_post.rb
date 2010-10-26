class BlogPost < ActiveRecord::Base
  has_many :comments
  
  validates :title, :presence => true
  
  scope :latest_5_elements, lambda{ order('created_at DESC').limit(5) }
end
