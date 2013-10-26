class Edge

  attr_reader :source, :destination, :cost

  def initialize(source, destination, cost)
    @source = source
    @destination = destination
    @cost = cost
  end

  def origin
    source.name
  end

  def goal
    destination.name
  end

  def has_node?(node)
    origin == node
  end
end
