require './lib/bike'
describe Bike do

  it 'responds to the method "working"' do
    expect(subject).to respond_to :working?
  end

  it 'can be reported boken' do
    subject.report_broken
    expect(subject).to be_broken
  end

  it 'does not work when reported broken' do
    subject.report_broken
    expect(subject).not_to be_working
  end

end
