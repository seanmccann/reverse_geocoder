require 'spec_helper'
require 'reverse_geocoder'
require 'byebug'

describe ReverseGeocoder do
  describe 'host' do
    it { ReverseGeocoder.configuration.host.should == 'http://www.datasciencetoolkit.org' }

    describe 'custom host' do
      before do
        ReverseGeocoder.configure do |config|
          config.host = 'http://somethingelse.intrans.dev'
        end
      end

      after do
        ReverseGeocoder.configure do |config|
          config.host = 'http://www.datasciencetoolkit.org'
        end
      end

      it { ReverseGeocoder.configuration.host.should == 'http://somethingelse.intrans.dev' }
    end
  end

  describe 'results' do
    let(:result) { ReverseGeocoder.search('37.806846,-122.440052') }

    it { result.is_a?(String).should be_true }
    it { result.should == "San Francisco, CA" }
  end
end
