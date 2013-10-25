require 'node'

describe Node do
  subject { Node.new '2' }

  it 'has a name' do
    expect(subject.name).to eq '2'
  end
end
