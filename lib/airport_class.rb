class Airport

attr_accessor :planes

def initialize
  @planes = []
end

def land_plane
  weather? == 'calm' ?  planes << Plane.new : "Landing delayed due to bad weather"
end

def release_plane
  weather? == 'calm' ? planes.shift : "Takeoff delayed due to bad weather"
end

def airport_has_plane?
  planes == [] ? false : true
end

def weather?
  Weather.new.weather
end

end
