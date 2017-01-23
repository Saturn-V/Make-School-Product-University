require 'test_helper'

class CommentTest < ActiveSupport::TestCase
    def setup
        @user = User.create()
        @post = Post.create(user: @user, title: 'I am a post title.', body: 'I am a post body.')
        @comment = Comment.create(user: @user, post: @post, body: "Body")
        @like = Like.create(user: @user, post: @post)
    end

    test 'Comment belongs to User' do
        assert_equal @user, @comment.user
    end

    test 'Comment belongs to post' do
        assert_equal @post, @comment.post
    end
end
