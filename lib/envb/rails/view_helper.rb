module Envb
  module Rails
    module ViewHelper
      # Public: Renders the page partial that contains the banner markup.
      #
      # except - An optional Array of Rails environment names not to render on
      #          (default: %w(production)).
      #
      # Examples
      #
      #   <% envb %>
      #
      #   <% envb([]) %>
      #
      #   <% envb(%w(staging production)) %>
      #
      # Returns no value.
      def envb(except = %w(production))
        unless except.include?(::Rails.env)
          render partial: 'envb/banner', locals: { env: ::Rails.env }
        end
      end
    end
  end
end

ActionView::Base.send :include, Envb::Rails::ViewHelper
