require 'test_helper'

class LikeTest < ActiveSupport::TestCase
    def setup
        @user = User.create()
        @post = Post.create(user: @user, title: 'I am a post title.', body: 'I am a post body.')
        @comment = Comment.create(user: @user, post: @post, body: "Body")
        @like = Like.create(user: @user, post: @post)
    end

    test 'like can be on Post' do
        assert_equal @post, @like.post
    end

    test 'like belongs to user' do
        assert_equal @user, @like.user
    end
end
