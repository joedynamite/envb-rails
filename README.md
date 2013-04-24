# envb-rails

A super easy way to display what Rails environment you're currently running in.

*There were other gems that do this, but they are kind of ugly and display other extraneous information that I didn't find relevant.*

![envb-rails in action!](https://github.com/joedynamite/envb-rails/raw/master/Screenshot.jpg)

## Installation

Add the envb-rails gem to your Gemfile. Then run `bundle install`.

    gem 'envb-rails'

## Usage

Require the envb stylesheet at the top of your asset manifest.

    *= require envb
    *= require_self
    ...

That's it!

### Excluding environment names

By default envb-rails will not render a banner on the production environment.

To exclude the banner from other environments you can create `config/initializers/envb.rb` and modify the array of excluded environment names. For example, if you wanted to exclude on staging as well as production:

    Envb::Rails.options[:excludes] = %w(production staging)

Or to alternatively have it render on production as well, you can use an empty array:

    Envb::Rails.options[:excludes] = []

## Customization

By default envb-rails will colorize the environment banners in the following combinations, development:purple, acceptance:aqua, staging:orange, and production:red. Other custom named environments will be a default (gray) color.

If you would like to customize the colors or add environment names you can run `rails generate envb:stylesheet`. Inside the generated `envb_custom.css.scss` file you will be able to specify colors and override other default styles if you so choose.

## Attribution

- Banner colors are from [Chris Kempson's Tomorrow Night theme](https://github.com/chriskempson/tomorrow-theme).
- Mini Browser in Screenshot is from [Didi Medina on Dribbble](http://dribbble.com/shots/430263-FREE-PSD-Mini-Browser).

----

Copyright &copy; 2013 Joe Bilt.
