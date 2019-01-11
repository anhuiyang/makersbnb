require_relative 'web_helper'
feature 'Logging out' do
  scenario 'User can log out' do
    log_in
    click_on 'Log Out'
    expect(page).to have_button 'Log In'
  end
end
