feature 'Listing a Space' do
  scenario 'User can select list on profile' do
    log_in
    click_on 'List A Space'
    expect(page.current_path).to eq('/list')
  end
  scenario 'User can list a space' do
    log_in
    click_on 'List A Space'
    fill_in :name, with: 'Manor Frenzy'
    fill_in :description, with: 'A long description'
    fill_in :price, with: '87'
    click_on 'Submit'
    expect(page.current_path).to eq('/properties')
    expect(page).to have_content('Manor Frenzy')
    expect(page).to have_content('A long description')
    expect(page).to have_content('£87 per night')
  end
end
