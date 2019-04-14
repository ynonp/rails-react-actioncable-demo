require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  include Warden::Test::Helpers

  # spec/requests/helpers.rb
  def in_browser(name)
    old_session = Capybara.session_name

    Capybara.session_name = name
    yield

    Capybara.session_name = old_session
  end
end
