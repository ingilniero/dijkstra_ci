require 'graph'
require 'node'
require 'edge'
require 'pry'

describe Graph do
  let(:node_1) { '1' }
  let(:node_2) { '2' }

  it 'has nodes' do
    expect(subject.routes).to be_kind_of(Array)
  end

  describe '#add_path' do
    it 'creates and edge with nodes and a cost' do
      expect(subject.add_path(node_1, node_2, 3)).to be_true
    end
  end

  describe '#init' do
    before do
      subject.init('1')
    end

    it 'sets a tentative distance for the first node' do
      expect(subject.distances['1']).to eq 0
    end

    it 'sets the previous node to a fix value' do
      expect(subject.previous['1']).to eq 'source'
    end
  end

  describe '#check' do
    before { subject.check('1') }
    it 'marks a node as visited' do
      expect(subject.visited['1']).to be_true
    end
  end

  describe '#overwrite_distance_for' do
    before { subject.overwrite_distance_for('2', '1', 10) }

    it 'updates the relationship between nodes' do
      expect(subject.previous['1']).to eq '2'
    end

    it 'updates the distance of a node' do
      expect(subject.distances['1']).to eq 10
    end

  end
end
