module Envb
  module Rails
    extend self

    @options = { excludes: ['production'] }

    attr_accessor :options
  end
end
