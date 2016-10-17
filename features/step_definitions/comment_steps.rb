Then(/^A new comment is created$/) do
  expect(@trev.comments.count).to eq(1)
end
