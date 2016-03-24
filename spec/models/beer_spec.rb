require 'rails_helper'

RSpec.describe Beer, type: :model do
  let(:feral) {Beer.create!(name: "hop hog", brewer: "feral", style: "india pale ale", abv: 6)}
  let(:kaiju) {Beer.create!(name: "behemoth", brewer: "kaiju!", style: "double india black ale", abv: 10.5)}

  it "titleizes attributes" do  
    expect(feral.name).to eq "Hop Hog"
    expect(feral.brewer).to eq "Feral"
    expect(feral.style).to eq "India Pale Ale"
  end
end
