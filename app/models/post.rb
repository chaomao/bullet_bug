class Post < ApplicationRecord

  has_many :comments


  def self.get_comments(post)
    puts post&.comments&.count
  end


  def self.get_post(comment)
    puts comment&.post&.name
  end
end
