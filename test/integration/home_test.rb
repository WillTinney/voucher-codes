require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest
  test "loads correctly" do
    visit "/"
    assert_equal 200, page.status_code
  end

  test "index_loads_correct_number_of_vouchers" do
    visit "/"
    assert page.has_selector?('.voucher', count: Voucher.count)
    # save_and_open_screenshot
  end
end
