class Comment < ActiveRecord::Base

  attr_accessible :name, :title, :body, :post_id, :date

  belongs_to :posts

end
