# frozen_string_literal: true

require "bundler/inline"

gemfile(true) do
  source "https://rubygems.org"
  git_source(:github) { |repo| "https://github.com/#{repo}.git" }
  gem "dotenv"
end

require "dotenv/load"

`export PROTOCOL=ENV["PROTOCOL"]`
`export HOST=ENV["HOST"]`
`export ROUTE=ENV["ROUTE"]`
`export USERNAME=ENV["USERNAME"]`
`export PASSWORD=ENV["PASSWORD"]`
`export AUTH_URL=ENV["AUTH_URL"]`
`export USERS=ENV["USERS"]`
`export RAMP_UP=ENV["RAMP_UP"]`
`export ITERATIONS=ENV["ITERATIONS"]`

`sh run.sh`
