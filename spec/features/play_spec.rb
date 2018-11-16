feature "Play game" do

  scenario 'Choose Rock' do
    sign_in_and_play
    select 'Rock', from: 'player_choice'
    click_button('submit')
    expect(page).to have_content('Rock vs')
  end 

end
