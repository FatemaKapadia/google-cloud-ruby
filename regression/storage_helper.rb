# Copyright 2014 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "helper"
require "gcloud/storage"

# Set the default adapter to HTTPClient
# See https://github.com/google/google-api-ruby-client/issues/67
# and https://github.com/google/google-api-ruby-client/issues/69
# and https://github.com/google/google-api-ruby-client/issues/106
Faraday.default_adapter = :httpclient

# Increase the number of retries because we run so many tests in parallel
require "gcloud/backoff"

Gcloud::Backoff.retries = 10

##
# Test class for running against a Storage instance.
# Ensures that there is an active connection for the tests to use.
#
# This class can be used with the spec DSL.
# To do so, add :storage to describe:
#
#   describe "My Storage Test", :storage do
#     it "does a thing" do
#       your.code.must_be :thing?
#     end
#   end
class StorageTest < Minitest::Test
  attr_accessor :storage

  ##
  # Setup project based on available ENV variables
  def setup
    @storage = Gcloud::Storage.project

    refute_nil @storage, "You do not have an active storage to run the tests."

    super
  end

  # Add spec DSL
  extend Minitest::Spec::DSL

  # Register this spec type for when :storage is used.
  register_spec_type(self) do |desc, *addl|
    addl.include? :storage
  end
end
