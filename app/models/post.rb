class Post < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :date, :entry, :author_id
  
  has_many :comments
  belongs_to :author

end
