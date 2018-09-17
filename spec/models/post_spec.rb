require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
  	before do
      @post = Post.create(date: Date.today, rationale: "Anything", user: User.create(email: "test@test.com", first_name: "Derek", last_name: "Han", password: "asdfasdf", password_confirmation: "asdfasdf"))
    end

    it 'can be created' do 
    puts @post 
      expect(@post).to be_valid
    end

  	it 'cannot be created without a date and rationale' do
  		@post.date = nil
  		@post.rationale = nil
  		expect(@post).to_not be_valid
  	end
  end
end
