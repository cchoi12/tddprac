require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    visit root_path

    click_on 'Add a new todo'
    fill_in 'Title', with: 'Clean my Laundry'
    click_on 'Submit'

    # expect(page).to have_content 'Clean my Laundry'
    expect(page).to have_css '.todos li', text: 'Clean my Laundry'
  end
end
