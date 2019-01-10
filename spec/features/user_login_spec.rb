require_relative 'web_helper'

feature 'logging in' do
  scenario 'User can log in' do
    log_in
    expect(page).to have_content 'Welcome user@email.com'
  end
end
