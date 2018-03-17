require 'rspec'
require 'things_collection'
require 'thing'

describe 'ThingsCollection' do
  let(:collection) do
    ThingsCollection.new('./spec/fixtures/test_thing.txt')
  end

  it '#for_temperature' do
    expect(collection.for_temperature(10).size).to eq 1
    expect(collection.for_temperature(10).map(&:to_s)).to match_array(['Кепка (Головной убор) 0..10'])
  end
end
