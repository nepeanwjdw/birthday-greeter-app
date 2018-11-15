feature "Testing the infrastructure" do
  scenario "test" do
    visit '/'
    expect(page).to have_text "testing infrastructure"
  end
end
