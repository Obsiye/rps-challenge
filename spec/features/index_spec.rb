feature "index page" do

  scenario 'Enter application website' do
    visit('/')
    expect(page).to have_content("Rock Paper Scissors!!")
  end
  
end
