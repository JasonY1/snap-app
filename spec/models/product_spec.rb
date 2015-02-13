require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validation" do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :type }
    it { is_expected.to validate_presence_of :quantity }
    it { expect(video).to be_valid }
  end
end
