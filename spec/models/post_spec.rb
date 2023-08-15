require 'rails_helper'

RSpec.describe Post, type: :model do
  # post has_many comments
  # comment belongs_to post
  # creator belongs_to comment
  let_it_be(:post) { create(:post) }
  let_it_be(:comment) { create(:comment, post: post)}

  # before(:all) do # same as let_it_be
  #   puts "start before all"
  #   @post = create(:post)
  #   @comment = create(:comment, post: @post)
  #   puts "end before all"
  # end

  it 'ok' do
    creator = create(:creator, comment_id: comment.id)
    comment.post # ok
  end

  it 'raise N+1 query issue' do
    creator = create(:creator, comment: comment)

    comment.post # will raise eager loading Comment => [:post]
  end
end
