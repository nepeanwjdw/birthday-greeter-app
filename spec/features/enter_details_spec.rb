feature "It is your Birthday" do
  scenario "wishes you Happy Birthday" do
    visit '/'
    fill_in "name", with: "Will"
    fill_in "day", with: "15"
    fill_in "month", with: "November"
    click_button "Submit"
    expect(page).to have_text "Happy Birthday Will!"
  end
end

feature "It is not your Birthday" do
  scenario "tells you how many days until your Birthday" do
    visit '/'
    fill_in "name", with: "Will"
    fill_in "day", with: "13"
    fill_in "month", with: "November"
    click_button "Submit"
    expect(page).to have_text "Your Birthday will be in 2 days, Will"
  end
end
