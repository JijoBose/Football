module VenuesHelper
  def venue_names_list
    Venue.select(:location, :id).map{|c| [c.location, c.id ] }
  end
end
