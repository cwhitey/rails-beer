require 'rails_helper'

RSpec.describe User, type: :model do
  let(:callum) {User.create!(email: "callum1234@beers.com", pasword: "password", role: :user)}
  let(:feral) {Beer.create!(name: "hop hog", brewer: "feral", style: "india pale ale", abv: 6)}
  let(:kaiju) {Beer.create!(name: "behemoth", brewer: "kaiju!", style: "double india black ale", abv: 10.5)}
  
  it "will have beer only if beer has been assigned" do 
    callum.beers<< feral

    expect(callum.has_beer?(feral)).to eq true
    expect(callum.has_beer?(kaiju)).to eq false
  end

  it "retrieves username based on email" do
    expect(callum.username).to eq "callum1234"
  end
end
