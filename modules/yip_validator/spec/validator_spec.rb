require 'spec_helper'

RSpec.describe "YipValidator::Validator"  do
  let(:status) { 'Implemented' }

  let(:yip){
    {
      yip: 7,
      title: 'Oracle Trading Locks',
      author: 'Jackson Chan, Kain Warwick, Clinton Ennis',
      status: status,
      created: '2019-07-09'
    }
  }
  subject(:validator){ YipValidator::Validator.new(yip)}

  describe "valid" do
    it "should have required fields" do
      expect(validator.valid?).to eq true
    end
  end

  describe "missing fields" do
    it "raise error if required fields are missing" do
      expect(YipValidator::Validator.new().valid?).to eq false
    end
  end

  describe "wrong status" do
    let(:status) { 'Foo'}
    it "raise error if required fields are missing" do
      expect(validator.valid?).to eq false
      expect(validator.errors[:status].first).to eq 'is not included in the list'
    end
  end

  describe "attribute with -" do
    it "is valid if specified" do
      YipValidator::Validator.new(yip.merge({'discussions-to':'something'}))
    end

    it "not valid if not specified" do
      expect{
        YipValidator::Validator.new(yip.merge({'how-to':'something'}))
      }.to raise_error(/unknown attribute/)
    end
  end

  describe "attribute with _" do
    it "not valid" do
      expect{
        YipValidator::Validator.new(yip.merge({'discussions_to':'something'}))
      }.to raise_error("discussions_to incude _ which is not allowed")
    end
  end
end
