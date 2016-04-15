require 'rails_helper'

RSpec.describe Advertisement, type: :model do
let(:advertisements) { Advertisement.create!(title: "New Advertisement Title", body: "New Advertisement Body", price: 0) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(advertisements).to have_attributes(title: "New Advertisement Title", body: "New Advertisement Body", price: 0)
    end
  end
end
