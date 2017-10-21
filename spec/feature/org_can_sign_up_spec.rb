require 'rails_helper'

feature 'orgs can create their account' do
  context 'with valid parameters' do
    scenario 'creates the org account' do
      visit '/organizations/sign_up'

      within('form') do
        fill_in 'Name', with: 'First Org'
        fill_in 'Email', with: 'admin@example.com'
        fill_in 'Password', with: 'password'
        fill_in 'Password confirmation', with: 'password'
      end

      click_button 'Sign up'

      expect(page).to have_content 'You have signed up successfully.'
      expect(Organization.last.name).to eq 'First Org'
    end
  end
end
