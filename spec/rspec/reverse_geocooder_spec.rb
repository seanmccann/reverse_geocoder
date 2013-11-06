require 'spec_helper'
require 'reverse_geocoder'

describe ReverseGeocoder do
  let(:result) { ReverseGeocoder.search('37.806846,-122.440052') }

  it { result.is_a?(Hash).should be_true }
end
