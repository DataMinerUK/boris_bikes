require './lib/bike_container'

shared_examples_for BikeContainer do
  it 'has a default capacity when initialized' do
    expect(subject.capacity).to eq BikeContainer::DEFAULT_CAPACITY
  end
end

class BikeContainerTest; include BikeContainer; end

describe BikeContainerTest do
  it_behaves_like BikeContainer
end
