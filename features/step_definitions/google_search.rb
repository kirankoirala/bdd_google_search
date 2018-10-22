Given(/^I am in google home page$/) do
 @browser.goto("google.com")
end

When(/^I search for "([^"]*)"$/) do |search_text|
  input_box = @browser.text_field(:name, "q")
  input_box.value = search_text
  @browser.button(:name, "btnK").click
end


Then(/^"([^"]*)" appears in the search result$/) do |search_text|
  expect(@browser.text.include?(search_text)).to be (true)
end