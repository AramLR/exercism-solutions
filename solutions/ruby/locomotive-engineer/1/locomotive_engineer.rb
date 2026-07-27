class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons_ids)
    wagons_ids
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first_elem, second_element, starting_wagon, *remaining = each_wagons_id
    [starting_wagon, *missing_wagons, *remaining, first_elem, second_element]

  end

  def self.add_missing_stops(routing_hash, **stops)
    {**routing_hash, stops: stops.values}
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end