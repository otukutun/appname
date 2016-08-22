module Subdomain
  class Admin
    class << self
      def matches?(request)
        request.path.match(/^\/admin/)
        if Rails.env.production?
          request.subdomain == 'admin'
        else
          request.subdomain.blank?
        end
      end

      def path
        'admin' unless Rails.env.production?
      end
    end
  end
end
