class Graph
  attr_reader :routes, :distances, :previous, :visited

  def initialize
    @routes = []
    @distances = {}
    @visited = {}
    @previous = {}
  end

  def add_path(node_1, node_2, cost)
    node_1 = Node.new node_1
    node_2 = Node.new node_2
    @routes << Edge.new(node_1, node_2, cost)
  end

  def init(node)
    distances[node] = 0
    previous[node] = 'source'
  end

  def clear
    routes.each do |route|
      distances[route.destination.name] = 1000
      previous[route.destination.name] = 0
      visited[route.destination.name] = false
    end
  end

  def check(node)
    visited[node] = true
  end

  def overwrite_distance_for(node, neighbor, cost)
    update_distance_for(neighbor, cost)
    update_nodes(neighbor, node)
  end

  private

  def update_distance_for(node, distance)
    distances[node] = distance
  end

  def update_nodes(node, neighbor)
    previous[node] = neighbor
  end
end
