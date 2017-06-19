module TeamsHelper
  def team_names_list
    Team.select(:name, :id).map{|c| [c.name, c.id] }
    #Team.all.collect { |m| [m.id, m.name] }
  end

  def player_sort_list(teamid)
    Player.all.where(id: teamid)
    #Team.all.collect { |m| [m.id, m.name] }
  end
end
