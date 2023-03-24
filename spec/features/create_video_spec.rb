require 'rails_helper'

RSpec.describe 'Creating a video', type: :feature do
  scenario 'valid view when not logged in' do
    visit root_path
    expect(page).to have_content('Username')
  end

  scenario 'valid view when logged in' do
    @current_user = create :user
    visit root_path
    expect(page).to have_content('Share a video')
  end
end
