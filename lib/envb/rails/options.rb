module Envb
  module Rails
    extend self

    @options = {
      excludes: ['production'],
      colors: {
        development: '$envb_purple',
        acceptance: '$envb_aqua',
        staging: '$envb_orange',
        production: '$envb_red'
      }
    }

    attr_accessor :options
  end
end
