require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    click_on 'Add a new todo'

    expect(current_path).to eq(new_todo_path)
    fill_in 'Title', with: 'Test Todo'
    click_on 'Submit'

    expect(current_path).to eq(root_path)
    expect(page).to have_css '.todos li', text: 'Test Todo'
  end
end
