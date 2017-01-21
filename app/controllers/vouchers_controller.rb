class VouchersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @vouchers = Voucher.all
  end
end
