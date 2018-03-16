require 'rspec'
require 'thing'

describe 'Thing' do

  let(:thing) {Thing.from_file("./spec/fixtures/test_thing.txt")}

  it 'thing data tests' do
    expect(thing.title).to eq 'Кепка'
    expect(thing.type).to eq 'Головной убор'
    expect("#{thing.min_temperature}..#{thing.max_temperature}").to eq '0..10'
    expect(thing.to_s).to eq 'Кепка (Головной убор) 0..10'
  end

  it '#check_temperature?' do
    expect(thing.check_temperature?(10)).to eq true
  end
end
