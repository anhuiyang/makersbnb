def log_in
  visit '/'
  click_on 'Log In'
  fill_in('email', with: 'user@email.com')
  fill_in('password', with: 'secret123')
  click_on 'Log In'
end
