require 'spec_helper'

feature "hidden links" do
	let(:user) { Factory(:confirmed_user) }
	let(:admin) { Factory(:admin_user) }

	context "annanimous users" do
		scenario "cannot see the New Project link" do
			visit '/'
			assert_no_link_for "New Project"
		end
	end

	context "regular users" do
		before {sign_in_as!(user)}
		scenario "cannot see the New Project link" do
			visit '/'
			assert_no_link_for "New Project"
		end
	end

	context "admin users" do
		before { sign_in_as!(admin) }
		scenario "can see the New Project link" do
			visit '/'
			assert_link_for "New Project"
		end
	end
end


