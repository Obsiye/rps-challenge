feature "index_page" do

  scenario 'Enter application website' do
    visit('/')
    expect(page).to have_content("Rock Paper Scissors!!")
  end

  scenario 'Submit user form' do
    sign_in_and_play
    expect(page).to have_content("Welcome Abdi")
  end
  
end
