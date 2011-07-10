require 'spec_helper'

describe PagesController do
  render_views
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it  "should have the right title" do
      get 'home'
      response.should have_selector("title" , 
                      :content => "Ruby on Rials Tutorial Sample App | Home")
    end
    it  "should have text in the body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
     it  "should have the right title" do
        get 'contact'
        response.should have_selector("title" , 
                        :content => "Ruby on Rials Tutorial Sample App | Contact")
      end
  end
  
  describe "Get" "About" do
    it "should be successful" do
      get 'about' 
      response.should be_success
    end
     it  "should have the right title" do
        get 'about'
        response.should have_selector("title" , 
                        :content => "Ruby on Rials Tutorial Sample App | About")
      end
  end
  
  describe "Get" "Help" do
    it "should be successful" do
      get 'help' 
      response.should be_success
    end
     it  "should have the right title" do
        get 'help'
        response.should have_selector("title" , 
                        :content => "Ruby on Rials Tutorial Sample App | Help")
      end
  end
  
end
