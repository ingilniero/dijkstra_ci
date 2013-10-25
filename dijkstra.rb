class Dijkstra
  attr_reader :graph, :initial_node, :finish_node

  def initialize(graph)
    @graph = graph
  end

  def setup(initial, finish)
    @initial = graph.find(initial)
    @finish = graph.find(finish)
  end
end
