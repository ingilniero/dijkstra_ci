require 'dijkstra'
require 'graph'
require 'node'

describe Dijkstra do
  let(:graph) { Graph.new }

  it 'receives a graph' do
    expect{ Dijkstra.new graph }.to be_true
  end

  describe '#setup' do
    subject { Dijkstra.new graph }

    before { subject.setup("1", "6") }

    it 'setups an initial node' do
      expect(subject.initial_node).to be_kind_of(Node)
    end

    it 'setups a finish node' do
      expect(subject.finish_node).to be_kind_of(Node)
    end
  end
  it 'receives a finish node'
  it 'calculates the shortest path'
  it 'returns the shortest path'
end
