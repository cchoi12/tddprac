require 'rails_helper'

feature 'User sees own todos' do
  scenario "doesn't see others' todos" do
    Todo.create!(title: 'Buy Milk', email: 'anotha_example@example.com')

    sign_in_as 'example@example.com'

    expect(page).not_to have_css '.todos li', text: 'Buy Milk'
  end
end
