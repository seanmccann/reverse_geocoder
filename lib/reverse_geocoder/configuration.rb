module ReverseGeocoder
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end

  class Configuration
     attr_accessor :host

     def initialize
        @host = 'http://www.datasciencetoolkit.org'
     end
  end
end
