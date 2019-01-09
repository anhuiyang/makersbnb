RSpec.feature 'Sign Up' do
  scenario 'User can sign up' do
    visit ('/')
    click_on 'Sign Up'
    fill_in :username, with: "Jack"
    click_on 'Confirm'
    expect(page).to have_content "Welcome Jack"
  end
end
