feature "index page" do

  scenario 'Enter application website' do
    visit('/')
    expect(page).to have_content("Rock Paper Scissors!!")
  end

  scenario 'Fill in user form' do
    visit('/')
    fill_in('name', with: 'Abdi')
    expect(page).to have_content("Welcome Abdi")
  end
  
end
