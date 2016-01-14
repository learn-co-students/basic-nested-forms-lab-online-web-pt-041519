require 'rails_helper'
require 'capybara/rspec'

describe "the post form", :type => :feature do
  it "creates a post with content" do
    visit '/posts/new'
    fill_in :post_content, with: 'Hello'
    find('input[name="commit"]').click    
    expect(Post.last.content).to eq 'Hello'
  end

  it "creates an author when author fields are filled in" do
    visit '/posts/new'
    fill_in :author_name, with: 'Locke'
    find('input[name="commit"]').click    
    expect(Post.last.author.name).to eq 'Locke'
  end

  it "doesn't duplicate authors" do
    visit '/posts/new'
    fill_in :author_name, with: 'Locke'
    find('input[name="commit"]').click    
    visit '/posts/new'
    first_locke = Post.last.author
    
    fill_in :author_name, with: 'Locke'
    find('input[name="commit"]').click
    second_locke = Post.last.author
    expect(first_lock).to eq second_locke
  end
end
