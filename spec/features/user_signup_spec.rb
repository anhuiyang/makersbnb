RSpec.feature 'Sign Up' do
  scenario 'User can sign up' do
    visit('/')
    click_on 'Sign Up'
    expect(page.current_path).to eq('/signup')
    fill_in :email, with: 'Jack'
    fill_in :password, with: 'Emanuele'
    click_on 'Sign Up'
    expect(page.current_path).to eq('/profile')
    expect(page).to have_content 'Welcome Jack'
  end
end
