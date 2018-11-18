feature "Play game" do

  scenario 'Choose Rock' do
    sign_in_and_play
    select 'Rock', from: 'player_choice'
    click_button('submit')
    expect(page).to have_content('Abdi vs Computer')
  end

  # scenario 'Rock beats Scissors' do
  #   sign_in_and_play
  #   select 'Rock', from: 'player_choice'

  # end

end
