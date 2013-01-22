require 'spec_helper'

feature "Creating a Project " do
  scenario "can create a project" do
  	visit '/'
  	click_link 'New Project'
    fill_in 'Name', :with => 'Sublime Text 2'
    fill_in 'Description', :with => 'A text-editor for OS X'
    click_button 'Create Project'
    page.should have_content('Project has been created')
  end
end