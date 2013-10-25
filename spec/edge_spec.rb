require 'ostruct'
require 'edge'

describe Edge do
  let(:node_1) { OpenStruct.new(name: '1') }
  let(:node_2) { OpenStruct.new(name: '2') }

  subject { Edge.new node_1, node_2, 3 }

  it 'has a cost' do
    expect(subject.cost).to eq 3
  end
end
