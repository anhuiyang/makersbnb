feature 'logging in' do
  scenario 'User can log in' do
    visit '/'
    click_link 'log in'
    fill_in('email', :with => 'user@email.com')
    fill_in('password', :with => 'secret123')
    click_button 'log in'
    expect(page).to have_content 'Hi user@email.com'
  end
end
