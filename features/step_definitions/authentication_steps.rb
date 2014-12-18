def app_path
    ENV['APP_BUNDLE_PATH'] || (defined?(APP_BUNDLE_PATH) && APP_BUNDLE_PATH)
end

def fill_in_on_screen(field, text: null)
  text_field_selector =  "view marked:'#{field}'"

  check_element_exists(text_field_selector)

  frankly_map(text_field_selector, 'becomeFirstResponder')
  frankly_map(text_field_selector, 'setText:', text)
  frankly_map(text_field_selector, 'endEditing:', true)
end

def touch_button(field)
  text_field_selector =  "view marked:'#{field}'"
  check_element_exists(text_field_selector)

  touch(text_field_selector)
end

Given(/^I launch the app$/) do
  launch_app app_path
end

Then(/^I should see hello world$/) do
  text_field_selector =  "label marked:'Hello World'"

  check_element_exists(text_field_selector)
end