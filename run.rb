# frozen_string_literal: true

require "bundler/inline"

gemfile(true) do
  source "https://rubygems.org"
  git_source(:github) { |repo| "https://github.com/#{repo}.git" }
  gem "dotenv"
end

require "dotenv/load"

`export JMETER_PROTOCOL=ENV["JMETER_PROTOCOL"]`
`export JMETER_HOST=ENV["JMETER_HOST"]`
`export JMETER_ROUTE=ENV["JMETER_ROUTE"]`
`export JMETER_USERNAME=ENV["JMETER_USERNAME"]`
`export JMETER_PASSWORD=ENV["JMETER_PASSWORD"]`
`export JMETER_AUTH_URL=ENV["JMETER_AUTH_URL"]`
`export JMETER_USERS=ENV["JMETER_USERS"]`
`export JMETER_RAMP_UP=ENV["JMETER_RAMP_UP"]`
`export JMETER_ITERATIONS=ENV["JMETER_ITERATIONS"]`

`sh run.sh ruby`
