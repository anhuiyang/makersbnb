feature 'Listing a Space' do
  scenario 'User can select list on profile' do
    log_in
    click_on 'List A Space'
    expect(page.current_path).to eq('/list')
  end

  scenario 'User can list a space' do
    log_in
    click_on 'List A Space'
    fill in 
end
