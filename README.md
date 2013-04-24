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

As long as you don't want to customize any default behavior, that's it!

### Excluding environment names

By default envb-rails will not render a banner on the production environment.

To exclude the banner from other environments you can create `config/initializers/envb.rb` and modify the array of excluded environment names. For example, if you wanted to exclude on staging as well as production:

    Envb::Rails.options[:excludes] = %w(production staging)

Or to alternatively have it render on production as well, you can use an empty array:

    Envb::Rails.options[:excludes] = []

After creating or changing this initializer you must recompile your assets. In development mode this is as easy as running `rake assets:clean`. For non-local environments, most deployment systems will recompile with every deploy or you should be able to set them to.

## Customization

By default envb-rails will colorize the environment banners in the following combinations, development:purple, acceptance:aqua, staging:orange, and production:red. Other custom named environments will be a default (gray) color.

If you would like to customize the colors or add environment names you can further modify your `config/initializers/envb.rb` file with the following:

    Envb::Rails.options[:colors].update({
        custom_name: '#xxxxxx',
        another_name: 'rgb(x, x, x)',
        one_more: '$envb_green'
    })

As you can see, you should be able to use any valid CSS color model to specify the color of the banner. You may also use the built in envb color variables which are:

    $envb_gray:                   #969896;
    $envb_red:                    #cc6666;
    $envb_orange:                 #de935f;
    $envb_yellow:                 #f0c674;
    $envb_green:                  #b5bd68;
    $envb_aqua:                   #8abeb7;
    $envb_blue:                   #81a2be;
    $envb_purple:                 #b294bb;

As with excluding environments, when you change the initializer you must recompile your assets.

## Attribution

- Banner colors are from [Chris Kempson's Tomorrow Night theme](https://github.com/chriskempson/tomorrow-theme).
- Mini Browser in Screenshot is from [Didi Medina on Dribbble](http://dribbble.com/shots/430263-FREE-PSD-Mini-Browser).

----

Copyright &copy; 2013 Joe Bilt.
