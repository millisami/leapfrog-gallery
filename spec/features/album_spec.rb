require_relative '../spec_helper'

describe "Album Ownership" do

  it "logged in user can create gallery" do
    user = User.create!(
      email: 'millisami@gmail.com',
      password: 'sekret'
    )
    user2 = User.create!(
      email: 'hello@example.com',
      password: 'sekret'
    )

    visit '/users/sign_in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    click_link 'New Album'
    fill_in 'Title', with: 'My Album'
    click_button 'Create Album'

    expect(Album.last.title).to eq('My Album')
    expect(Album.last.user).to eq(user)
    expect(Album.last.user).not_to eq(user2)

  end

  it "title cannot be blank" do

    user = User.create!(
      email: 'millisami@gmail.com',
      password: 'sekret'
    )

    visit '/users/sign_in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    click_link 'New Album'
    fill_in 'Title', with: ''
    click_button 'Create Album'

  end
end