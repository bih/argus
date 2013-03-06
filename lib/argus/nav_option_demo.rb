require 'argus/nav_option'

module Argus

  class NavOptionDemo < NavOption
    attr_reader :tag

    def initialize(raw_data)
      @tag, @size = raw_data.unpack("vv")
    end

    def self.tag
      0
    end

    NavOption.register(self)
  end

end