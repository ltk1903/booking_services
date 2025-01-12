  Given("I am on the homepage") do
    visit root_path
  end
  
  Given("I am on the login page") do
    visit new_user_session_path
  end

  Given("I am on the signup page") do
    visit new_user_registration_path
  end

  When("I click on the {string} link") do |link_text|
    click_link link_text
  end
  
  Then("I should be redirected to the login page after signing up") do
    expect(page).to have_current_path(new_user_session_path, ignore_query: true)
  end

  Then("I should see the login form with field for {string} and {string}") do |field1, field2|
    expect(page).to have_field(field1)
    expect(page).to have_field(field2)
  end


  When("I fill in {string} with {string}") do |field, value|
    fill_in field, with: value
  end

  When("I press {string} button") do |button_text|
    click_button button_text
  end

  When("I press the {string} button") do |button_text|
    click_button button_text
  end
  
  Then("I should see message {string}") do |message|
    expect(page).to have_content message
  end
  
  Then("I should still be on the login page") do
    expect(page).to have_current_path(new_user_session_path, ignore_query: true)
  end
  
  Then("I should be redirected to the signup page") do
    expect(page).to have_current_path(new_user_registration_path, ignore_query: true)
  end
  
  
  Then("I should see the signup form with fields for {string}, {string}, and {string}") do |field1, field2, field3|
    expect(page).to have_field(field1)
    expect(page).to have_field(field2)
    expect(page).to have_field(field3)
  end
  
  
  
  Then("I should be redirected to the login page") do
    expect(page).to have_current_path(new_user_session_path, ignore_query: true)
  end
  
  Then("I should see the login form with fields for {string} and {string}") do |field1, field2|
    expect(page).to have_field(field1)
    expect(page).to have_field(field2)
  end
  
  Then("I should be redirected to the homepage") do
    expect(current_path).to eq root_path
  end
  
  Then("I should see email account in homepage") do
    expect(page).to have_content "test@example.com"
  end
  