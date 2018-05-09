module Features
  def sign_in
    visit root_path
    fill_in 'Email', with: 'example@example.com'
    click_on 'Sign in'
  end

  def sign_in_as email
    visit root_path
    fill_in 'Email', with: email
    click_on 'Sign in'
  end
end
