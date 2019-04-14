require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector('li', text: 'MyText', count: 2)
  end

  test 'create a post and see it added live' do
    in_browser(:one) do
      signin_as('joe@gmail.com', '102030')
      visit posts_url
    end

    in_browser(:two) do
      signin_as('jane@gmail.com', '102030')
      visit posts_url
    end

    in_browser(:one) do
      click_on 'Create Post'
      fill_in :post_text, with: '123'
      find('input[type="submit"]').click
    end

    in_browser(:two) do
      assert_selector('li', text: '123')
    end
  end

  def signin_as(email, password)
    visit new_user_session_path
    fill_in :user_email, with: email
    fill_in :user_password, with: password
    find('input[type="submit"]').click
  end
end
