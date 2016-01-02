class City
  attr_accessor :name, :connections, :x, :y
  cattr_accessor :all

  def initialize(name, x, y, connections=[])
    self.name = name
    self.x = x
    self.y = y
    self.connections = connections

    self.class.all ||= {}
    self.class.all[name] = self
  end

end
