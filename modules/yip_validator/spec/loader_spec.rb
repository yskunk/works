require 'spec_helper'

RSpec.describe "YipValidator::Loader"  do
  let(:status) { 'Implemented' }
  let(:yip){
    {
      "yip" => 7,
      "title" => 'Oracle Trading Locks',
      "author" => 'Jackson Chan, Kain Warwick, Clinton Ennis',
      "status" => status,
      "created" => Date.parse('2019-07-09')
    }
  }
  let(:file_name) {
   'spec/fixtures/valid/yip-7.md'
  }

  subject(:loader){ YipValidator::Loader.load(file_name)}

  describe "valid" do
    it "should have required fields" do
      expect(loader).to eq(yip)
    end
  end
end
