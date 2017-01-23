require 'test_helper'

class PostTest < ActiveSupport::TestCase
    def setup
        @user = User.create()
        @post = Post.create(user: @user, title: 'I am a post title.', body: 'I am a post body.')
        @comment = Comment.create(user: @user, post: @post, body: "Body")
        @like = Like.create(user: @user, post: @post)
    end

    test "post belongs to user" do
        assert_equal @user, @post.user
    end

    test 'post can have comments' do
        assert_equal 1, @post.comments.size
    end

    test 'post can have likes' do
        assert_equal 1, @post.likes.size
    end
end
