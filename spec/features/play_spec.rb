feature "Play game" do

  scenario 'Click button with value Rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Rock vs')
  end 

end
