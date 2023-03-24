require 'test_helper'

class HomeTest < Capybara::Rails::TestCase
  def setup
    @one = videos :one
    @two = videos :two
  end

  test 'home index' do
    visit root_path

    assert page.has_content?(@one.title)
    assert page.has_content?(@two.title)
  end
end
