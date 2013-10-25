require 'graph'

describe Graph do
  let(:node_1) { Node.new }
  let(:node_2) { Node.new }

  it 'can create edge with nodes and a cost' do
    expect(subject.set_edge(node_1, node_2, 3)).to be_true
  end

  it 'has nodes' do
    expect(subject.nodes).to be_kind_of(Array)
  end

  describe '#find' do
  end
end
