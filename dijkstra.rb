class Dijkstra

  attr_reader :buffer, :graph, :shortest_path

  def initialize(graph)
    @graph = graph
    @buffer = []
    @shortest_path = []
  end


  def calc_shortest_path(source_node, destination_node)
    graph.clear

    add_to_buffer(source_node)

    graph.init(source_node)

    until @buffer.empty?
      current_node = @buffer.shift.name

      unless visited?(current_node)

        graph.routes.each do |route|

          if route.origin == current_node
            neighbor = route.goal
            cost = route.cost

            unless visited?(neighbor)
              update_distance_for current_node, neighbor, cost
            end
          end
          graph.check(current_node)
        end
      end

    end
  end

  def get_shortest_path_for(destination)
    graph.previous.each do |node, prev|
      if node == destination
        get_shortest_path_for prev unless prev == 'source'
        @shortest_path << destination
      end
    end
  end

  private

  def update(current_node, neighbor, updated_cost)

    if has_lower_cost?(current_node, updated_cost)

      graph.overwrite_distance_for(current_node, neighbor, updated_cost)

      add_to_buffer(neighbor)
    end
  end

  def has_lower_cost?(node, cost)
    distance_for(node) < cost
  end

  def updated_cost(current, cost)
    distance_for(current) + cost
  end

  def distance_for(node)
    graph.distances[node]
  end

  def add_to_buffer(node)
    @buffer << Node.new(node)
  end

  def visited?(node)
    !!graph.visited[node]
  end

  def update_distance_for(node, neighbor, cost)
    update node, neighbor, updated_cost(node, cost)
  end

end
