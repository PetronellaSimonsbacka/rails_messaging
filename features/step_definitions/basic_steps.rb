Given(/^I am on the landing page$/) do
  visit root_path
end

Given(/^I click on the "([^"]*)" link$/) do |link|
  click_link_or_button link
end

Then(/^I should be on the registration page$/) do
  expect(current_path).to eq '/users/sign_up'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |element, text|
  fill_in element, with: text
end

When(/^I click the "([^"]*)" button$/) do |link|
  click_link_or_button('Create')
end

Then(/^I should see "([^"]*)"$/) do |flash|
  expect(page).to have_content('Welcome! You have signed up successfully.')
end
