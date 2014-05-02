require 'spec_helper'

describe "Pages" do
  describe "GET /pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get root_path
      response.status.should be(200)
    end
  end

  describe "Index Page" do
  	it "Should have Post Title" do
  	   visit 'posts_path' 
  	   page.should have_content(post: title)
       page.should have_content(post: content)
    end
  end
end
