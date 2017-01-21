require 'test_helper'

class VoucherTest < ActionDispatch::IntegrationTest
  test "lets a signed in user create a new voucher" do
    login_as users(:john)
    visit "/vouchers/new"

    fill_in "voucher_title", with: "20\% off School Equipment"
    fill_in "voucher_description", with: "Use podcast voucher code TED20"
    click_button 'Create Voucher'

    # Should be redirected to Home with new voucher
    assert_equal root_path, page.current_path
    assert_equal 200, page.status_code
    assert page.has_content?("TED20")
  end
end
