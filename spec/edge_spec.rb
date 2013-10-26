require 'ostruct'
require 'edge'

describe Edge do
  let(:node_1) { OpenStruct.new(name: '1') }
  let(:node_2) { OpenStruct.new(name: '2') }

  subject { Edge.new node_1, node_2, 3 }

  it 'has a cost' do
    expect(subject.cost).to eq 3
  end

  describe '#origin' do
    it 'returns the name of the source' do
      expect(subject.origin).to eq '1'
    end
  end

  describe '#goal' do
    it 'returns the name of the destination' do
      expect(subject.goal).to eq '2'
    end
  end

  describe '#has_node?' do
    it 'checks if a node exists in the enge' do
      expect(subject.has_node?('1')).to be_true
    end
  end
end
