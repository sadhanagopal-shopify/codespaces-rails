class BlogPost < ApplicationRecord
  belongs_to :author

  def author_name
    Author.find(self.author_id).first_name + " " + Author.find(self.author_id).last_name
  end

end
