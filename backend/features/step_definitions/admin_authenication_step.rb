Given("I am on the admin login page") do
    visit new_admin_session_path
  end
  
  Given("an admin exists with email {string} and password {string}") do |email, password|
    Admin.create!(email: email, password: password, password_confirmation: password)
  end
  
  When("I fill in {string} with {string}") do |field, value|
    fill_in field, with: value
  end
  
  When("I press {string}") do |button|
    click_button button
  end
  
  Then("I should see a login form with fields for {string} and {string}") do |field1, field2|
    expect(page).to have_field(field1)
    expect(page).to have_field(field2)
  end
  
  Then("I should see a {string} button") do |button|
    expect(page).to have_button(button)
  end
  
  Then("I should see an error message {string}") do |message|
    expect(page).to have_content(message)
  end
  
  Then("I should be redirected to the admin dashboard") do
    expect(current_path).to eq(admin_dashboard_path)
  end
  
  Then("I should see the email {string} on the page") do |email|
    expect(page).to have_content(email)
  end
  
  Then("I should see a signup form with fields for {string}, {string}, and {string}") do |field1, field2, field3|
    expect(page).to have_field(field1)
    expect(page).to have_field(field2)
    expect(page).to have_field(field3)
  end
  
  When("I click on the {string} link") do |link|
    click_link link
  end
  
  Then("I should be redirected to the admin signup page") do
    expect(current_path).to eq(new_admin_registration_path)
  end
  
  Then("I should see a notice {string}") do |notice|
    expect(page).to have_content(notice)
  end
  
  Then("I should still be on the admin login page") do
    expect(current_path).to eq(new_admin_session_path)
  end
  