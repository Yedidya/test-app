require 'rails_helper'
require 'capybara/rails'
require 'spec_helper'


RSpec.describe Post, :type => :model do

  describe "make_post(post) method" do
    it "should return the users input as a post" do
      post = Post.new
      post.make_post("Hello")
      expect(post.content).to eq("Hello ")
    end
  end 

  describe "add_to_post method" do
    it "should add to current post content" do
      post = Post.new(:content => "Hello ")
      post.add_to_post("this is Yedidya Weiner.")
      expect(post.content).to eq("Hello this is Yedidya Weiner. ")
    end
  end 

  describe "current_post method"do
    it "should return the current content of the post" do
      post = Post.new(:content => "Hello this is Yedidya Weiner. ")
      post.current_post
      expect(post.content).to eq("Hello this is Yedidya Weiner. ")
    end
  end

end
