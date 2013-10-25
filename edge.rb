class Edge
  attr_accessor :source, :destination, :cost

  def initialize(source, destination, cost)
    @source = source
    @destination = destination
    @cost = cost
  end
end
