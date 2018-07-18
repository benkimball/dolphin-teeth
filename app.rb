require 'sinatra'

get '/' do
  conn = PG::Connection.new
  "hello #{conn.db}"
end

get '/.well-known/acme-challenge/VEQxTMpdijgKUPzrDFW5eInPq_aKljanRUCHdS8Y5JA' do
  ENV['CERTBOT_CHALLENGE']
end
