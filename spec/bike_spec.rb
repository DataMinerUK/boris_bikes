require './lib/bike'
describe Bike do

  it 'responds to the method "working"' do
    expect(subject).to respond_to :working?
  end

end
