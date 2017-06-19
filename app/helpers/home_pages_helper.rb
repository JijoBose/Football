module HomePagesHelper
  def upcomming_match
    Match.where(:schedule => Time.now..6.months.after)
  end

  def team_name_finder(getid)
    a = Team.where(id: getid).pluck(:name)
    return a[0]
  end
end
