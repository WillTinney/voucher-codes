!json.extract! voucher, :title, :description, :url, :id

json.up_votes voucher.votes_for.count

if user_signed_in?
  json.up_voted current_user.voted_for? voucher
end
