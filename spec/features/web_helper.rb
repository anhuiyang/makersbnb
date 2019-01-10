def log_in
  visit '/'
  click_link 'log in'
  fill_in('email', :with => 'user@email.com')
  fill_in('password', :with => 'secret123')
  click_button 'log in'
end
