require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest
  test "loads correctly" do
    visit "/"
    assert_equal 200, page.status_code
  end

  test "each voucher list item has 3 components" do
    visit "/"
    assert page.has_selector?('.voucher', count: Voucher.count)
    assert page.has_selector?('.voucher-upvote', count: Voucher.count)
    assert page.has_selector?('.voucher-controls', count: Voucher.count)
    # save_and_open_screenshot
  end
end
