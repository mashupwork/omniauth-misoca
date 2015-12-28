require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Misoca < OmniAuth::Strategies::OAuth2
      option :client_options, {
        site: 'https://app.misoca.jp/oauth2',
        authorize_url: '/authorize',
        token_url: '/token',
      }
      option :provider_ignores_state, true

      uid { raw_info['id'].to_s }

      info do
        {
          nickname: raw_info['nickname'],
          image: raw_info['image'],
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        access_token.options[:mode] = :query
        @raw_info ||= access_token.get('api/v1/user/info').parsed
      end
    end
  end
end

OmniAuth.config.add_camelization 'misoca', 'Misoca'

