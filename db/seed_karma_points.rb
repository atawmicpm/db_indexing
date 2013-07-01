require_relative 


User.all.each do |user|

  karma_total = 0

  KarmaPoint.find_all_by_user_id(user.id).each do |karmapoint|
    karma_total += karmapoint.value
  end

  user.update_attributes(total_karma: karma_total)

end

# joins(:karma_points).group('users.id').
