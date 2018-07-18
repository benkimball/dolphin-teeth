require 'sinatra'

get '/' do
  'hello'
end

get '/.well-known/acme-challenge/VEQxTMpdijgKUPzrDFW5eInPq_aKljanRUCHdS8Y5JA' do
  ENV['CERTBOT_CHALLENGE']
end
