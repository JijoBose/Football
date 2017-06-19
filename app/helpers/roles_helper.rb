module RolesHelper
  def match_names_list
    Match.select(:id, :title).map{|c| [c.title, c.id] }
  end

  def player_names_list
    Player.select(:name, :id).map{|c| [c.name, c.id] }
  end

#  def menue_names_list
#    Venue.select(:location, :id).map{|c| [c.location, c.id ] }
#  end
end
