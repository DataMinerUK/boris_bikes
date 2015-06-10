require './lib/bike'
describe Bike do

  it 'responds to the method "working"' do
    expect(subject).to respond_to :working?
  end

  it 'can be reprted boken' do
    subject.report_broken
    expect(subject).to be_broken
  end

end
