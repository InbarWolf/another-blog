require 'rails_helper'

RSpec.feature "Creating Article" do
  
  scenario "A user creates a new article" do
    visit "/"
    
    click_link "New Article"
    
    fill_in 'Title', with: "this is a new Title from test"
    fill_in 'Body', with: "Lorem Ipsum"
    
    click_button "Create"
    
    expect(page).to have_content("New article created")
    expect(page.current_path).to eq(articles_path) 
  end
  
end