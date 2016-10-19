
When(/^They press "([^"]*)"(?: on "([^"]*)"|)$/) do |key, css_selector|
  css_selector ||= 'body'
  case key
    when "ENTER"
      keycode = 13
    when "TAB"
      keycode = 9
    when "SPACE"
      keycode = 32
  end
  keypress_script = "var e = $.Event('keydown', { keyCode: #{keycode}  }); $('#{css_selector}').trigger(e);"
  page.driver.execute_script(keypress_script)
end

Then(/^A new comment is created$/) do
  expect(@trev.comments.count).to eq(1)
end

When(/^sample comments have been created$/) do
  @comment = @post2.comments.create!(body: "i hate this comment", user: @trev)
end

When(/^The comment belongs to the signed in user$/) do
  expect(@comment.user).to eq(@trev)
end

When(/^They click "([^"]*)" on "([^"]*)"$/) do |button, css_selector|
  within(:css, css_selector) do
    click_on button
  end
end

Then(/^The comment is updated$/) do
  expect(page).to have_content("I love biiiiiiiig butts and i cannot lie!")
end


