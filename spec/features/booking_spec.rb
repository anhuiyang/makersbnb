require_relative 'web_helper'


feature do
  scenario 'a customer can book a space' do
    log_in
    click_on 'Browse'
    click_on 'More Information?'
    click_on 'Book now'

    expect(page).to have_content('Request to owner has been sent')
  end
end
