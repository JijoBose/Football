module TeamsHelper
  def team_names_list
    Team.select(:name, :id).map{|c| [c.name, c.id] }
    #Team.all.collect { |m| [m.id, m.name] }
  end
end
