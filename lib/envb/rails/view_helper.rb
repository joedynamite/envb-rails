module Envb
  module Rails
    module ViewHelper
      def envb(except=['production'])
        render partial: 'envb/banner', locals: { env: ::Rails.env } unless except.include?(::Rails.env)
      end
    end
  end
end

ActionView::Base.send :include, Envb::Rails::ViewHelper
