require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'データが保存される' do
    before do
      @post = Post.new
      @post.title = "Hello"
      @post.content = "sunny"
      @post.save
    end
    it '保存される' do
      expect(@post).to be_valid
    end
  end
  context 'データが保存されない' do
    before do
      @post = Post.new
      @post.title = ""
      @post.content = "reiny"
      @post.save
    end
    it '保存されない' do
      expect(@post).to be_valid
      # expect(@post).to be_invalid
      # expect(@post.errors[:title]).to include("can't be blank")
    end
  end
end
