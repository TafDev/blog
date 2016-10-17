Given(/^sample users have been created$/) do
  User.create(email: "corey@gmail.com", password: "123456")
  User.create(email: "trevor@gmail.com", password: "123456")
end

Given(/^They have logged in as "([^"]*)"$/) do |email|
  @user = User.find_by(email: email)
  page.set_rack_session('warden.user.user.key' => User.serialize_into_session(@user))
end

When(/^They navigate to the "([^"]*)" page$/) do |page|
  visit get_named_route(page)
end

When(/^They fill in the "([^"]*)" field with "([^"]*)"$/) do |label, content|
  fill_in label, with: content
end

When(/^They click "([^"]*)"$/) do |this|
  click_on this
end


Then(/^A new post is created$/) do
  expect(@user.posts.count).to eq(1)
end

Then(/^They are redirected to the "([^"]*)" page$/) do |page|
  expect(current_path).to eq(get_named_route(page))
end

Then(/^The page contains "([^"]*)"$/) do |content|
  expect(page).to have_content(content)
end

Then(/^The page contains "([^"]*)" in "([^"]*)"$/) do |content, css_selector|
  within(:css, css_selector) do
    expect(page).to have_content(content)
  end
end

