require "reverse_geocoder/version"
require 'reverse_geocoder/configuration'
require 'oj'
require 'curb'

module ReverseGeocoder
  def self.search(coordinates)
    url = "#{ReverseGeocoder.configuration.host}/twofishes?ll=#{coordinates}&cc=us&maxInterpretations=3&woeRestrict=7,8,9,12,31"
    response = Curl::Easy.perform url
    Oj.load(response.body_str)#['interpretations'].first['feature']
  end
end
