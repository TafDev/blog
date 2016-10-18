When(/^They press "([^"]*)"$/) do |key|
  case key
    when "ENTER"
      keycode = 13
    when "TAB"
      keycode = 9
    when "SPACE"
      keycode = 32
  end
  keypress_script = "var e = $.Event('keydown', { keyCode: #{keycode} }); $('textarea').trigger(e);"
  page.driver.execute_script(keypress_script)
end

Then(/^A new comment is created$/) do
  expect(@trev.comments.count).to eq(1)
end
