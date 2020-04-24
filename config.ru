$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "lib")))
require "geminabox"

Geminabox.data = ENV.fetch('DATADIR', '/data')
Geminabox.rubygems_proxy = true
Geminabox.allow_remote_failure = true
Geminabox.http_adapter.http_client.ssl_config.verify_mode = OpenSSL::SSL::VERIFY_NONE

run Geminabox::Server
