require 'rspec'
require 'things_collection'

describe 'ThingsCollection' do

  it 'test ThingsCollection' do
    things_collection = ThingsCollection.new('./spec/fixtures/*txt')
    expect(things_collection.class).to eq ThingsCollection
  end
end
