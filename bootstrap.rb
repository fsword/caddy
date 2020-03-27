#!/usr/bin/env ruby

content = ENV.keys.select{|s| s =~ /CADDY_/}.map do |s|
  domain = s[6..-1].gsub("_",".")
  service = ENV[s]
  %Q|#{domain} {
  proxy / http://#{service} {
    transparent
    websocket
  }
  tls #{ENV['TLS_EMAIL']}
}
|
end.join("\n")

puts content
