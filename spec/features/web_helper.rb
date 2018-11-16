def sign_in_and_play
  visit('/')
  fill_in('name', with: 'Abdi')
  click_button('submit')
end
