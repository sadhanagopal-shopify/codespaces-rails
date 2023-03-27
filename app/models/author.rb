class Author < ApplicationRecord
  has_many :blog_posts

  def full_name
    self.first_name + " " + self.last_name
  end
end
