json.vouchers do
  json.array! @vouchers do |voucher|
    json.partial! "vouchers/voucher", voucher: voucher
  end
end
