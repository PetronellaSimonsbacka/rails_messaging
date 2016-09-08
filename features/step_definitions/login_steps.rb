Given(/^I am on the landing page$/) do
  visit root_path
end

Given(/^I click on the "([^"]*)" button$/) do |button|
  click_link_or_button('Login')
end

Then(/^I should be on the log in page$/) do
  visit('/users/sign_in')
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |element, text|
  fill_in element, with: text
end

When(/^I click the "([^"]*)" button$/) do |link|
  click_link_or_button(link)
end

Then(/^I should be redirected to the index page$/) do
  expect(current_path).to eq root_path
end

Then(/^I should see "([^"]*)"$/) do |flash|
  expect(page).to have_content('Signed in successfully.')
end

Given(/^the following user exist:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:user, hash)
  end
end
