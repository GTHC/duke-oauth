require 'omniauth/strategies/oauth2'
require 'uri'

module OmniAuth
  module Strategies
    class GthcOauth2 < OmniAuth::Strategies::OAuth2
      option :name, 'gthc_oauth2'

      option :client_options, {
        :site          => 'https://oauth.oit.duke.edu/oidc/',
        :authorize_url => '/oidc/authorize',
        :token_url     => '/oidc/token'
      }

      uid { raw_info['email'] }

      info do
        {
          email: raw_info['email'],
          netid: raw_info['dukeNetID']
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      # TODO: use given eppn, extract netid, then pass to /identity API

      def raw_info
        @raw_info ||= access_token.get("/userinfo").parsed
      end


      private

      def callback_url
        options[:redirect_uri] || (full_host + script_name + callback_path) || super
      end

    end
  end
end
