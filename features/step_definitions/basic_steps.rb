Given(/^I am on the landing page$/) do
  visit '/'
end

Given(/^I click on the "([^"]*)" link$/) do |link|
  click_link_or_button link
end

Then(/^I should be on the registration page$/) do
  expect(current_path).to eq '/users/sign_up'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click the "([^"]*)" button$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
