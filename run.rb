# frozen_string_literal: true

require "bundler/inline"

gemfile(true) do
  source "https://rubygems.org"
  git_source(:github) { |repo| "https://github.com/#{repo}.git" }
end

require "securerandom"

uuid = SecureRandom.uuid
puts uuid

`sh run.sh #{uuid}`
