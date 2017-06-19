module HomePagesHelper
  def upcomming_match
    Match.where(:schedule => Time.now..6.months.after)
  end

  def team_name_finder(getid)
    a = Team.where(id: getid).pluck(:name)
    return a[0]
  end

  def find_captain(matchid)
    b = Role.where(match_id: matchid).where(name: 'captain').pluck(:player_id)
    temp = b[0]
    final = Player.where(id: temp).pluck(:name)
    return final[0]
  end

  def find_goalkeeper(matchid)
    b = Role.where(match_id: matchid).where(name: 'goalkeeper').pluck(:player_id)
    temp = b[0]
    final = Player.where(id: temp).pluck(:name)
    return final[0]
  end
end
