require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
      @user = User.create()
      @post = Post.create(user: @user, title: 'I am a post title.', body: 'I am a post body.')
      @comment = Comment.create(user: @user, post: @post, body: "Body")
      @like = Like.create(user: @user, post: @post)

  end

  test 'can create and has posts' do
      assert_equal 1, @user.reload.posts.size
  end

  test 'can create and has comments' do
      assert_equal 1, @user.reload.comments.size
  end

  test 'can create and has likes' do
      assert_equal 1, @user.reload.likes.size
  end

end
