require 'rspec'
require 'things_collection'
require 'thing'

describe 'ThingsCollection' do
  let(:collection) do
    ThingsCollection.new('./spec/fixtures/test_thing.txt')
  end

  it '#for_temperature' do
    expect(collection.for_temperature(10).size).to eq 1
  end
end
