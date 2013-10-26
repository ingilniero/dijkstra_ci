require 'pry'
require 'dijkstra'
require 'graph'
require 'edge'
require 'node'

describe Dijkstra do
  let!(:graph) { Graph.new }

  let(:dijkstra) { Dijkstra.new graph }

  describe '#calculate_shortest_path' do
    before do
      graph.add_path 'one'  , 'three', 9
      graph.add_path 'two'  , 'three', 10
      graph.add_path 'one'  , 'two'  , 7
      graph.add_path 'six'  , 'five' , 9
      graph.add_path 'six'  , 'one'  , 14
      graph.add_path 'two'  , 'four' , 15
      graph.add_path 'four' , 'five' , 6
      graph.add_path 'three', 'four' , 11
      graph.add_path 'three', 'six'  , 2

      dijkstra.calc_shortest_path('one')
      dijkstra.get_shortest_path_for('five')
    end

    it 'returns the shortest path' do
      expect(dijkstra.shortest_path).to eq %w{ one three six five }
    end

  end

end
