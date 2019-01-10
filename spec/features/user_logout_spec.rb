require_relative 'web_helper'

feature 'logging out' do
  scenario 'User can log out' do
    log_in
    click_link 'log out'
    expect(page).to have_link 'log in'
  end
end
