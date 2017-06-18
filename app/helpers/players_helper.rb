module PlayersHelper
  def team_names_list
    Team.select(:name, :id).map{|c| [c.name, c.id ] }
  end
end
