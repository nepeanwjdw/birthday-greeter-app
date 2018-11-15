feature "It is your Birthday" do
  scenario "wishes you Happy Birthday" do
    visit '/'
    fill_in "name", with: "Will"
    fill_in "day", with: Time.now.strftime("%-d")
    fill_in "month", with: Time.now.strftime("%B")
    click_button "Submit"
    expect(page).to have_text "Happy Birthday Will"
  end
end
