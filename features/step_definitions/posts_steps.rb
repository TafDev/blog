Given(/^they are on the new post page$/) do
  visit new_post_path
end

When(/^they fill in in the relavant fields$/) do
  @description = Faker::Lorem.paragraph
  fill_in "Body", with: @description
end

When(/^they click on the "([^"]*)" button$/) do |button|
  click_button button
end

Then(/^a new post should be created$/) do
  expect(Post.last.body).to eq @description
end

