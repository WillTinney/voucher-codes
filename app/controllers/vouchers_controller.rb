class VouchersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @vouchers = Voucher.all
  end

  def new
    @voucher = Voucher.new
  end

  def create
    @voucher = Voucher.create!(voucher_params)
    if @voucher.save
      redirect_to :root
    else
      render :new
    end
  end

  def upvote
    @voucher = Voucher.find(params[:id])
    if current_user.voted_for? @voucher
      current_user.unvote_for @voucher
    else
      current_user.up_votes @voucher
    end
  end

  private

  def voucher_params
    params.require(:voucher).permit(:title, :description,
      :code, :company, :podcast, :link, :expiry_date, :expired,
      :votes)
  end
end
