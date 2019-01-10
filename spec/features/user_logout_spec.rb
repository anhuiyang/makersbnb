require_relative 'web_helper'

feature 'logging out' do
  scenario 'User can log out' do
    log_in
    click_on 'log out'
    expect(page).to have_button 'log in'
  end
end
