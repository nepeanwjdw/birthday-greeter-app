feature "Enter name and birthday" do
  scenario "should ask for your name" do
    visit '/'
    expect(page).to have_text "What is your name?"
  end
  scenario "should ask for your birthday" do
    visit '/'
    expect(page).to have_text "What is your Birthday?"
  end
end
