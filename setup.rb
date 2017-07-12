#!/usr/bin/env ruby

require 'bundler'
require 'jekyll'
require 'open-uri'

# download remark
request = open('https://remarkjs.com/downloads/remark-latest.min.js')
IO.copy_stream(request, 'js/remark-latest.min.js')

# build static files
conf = Jekyll.configuration({
  'source'      => '.',
  'destination' => '_site/'
})

Jekyll::Site.new(conf).process
