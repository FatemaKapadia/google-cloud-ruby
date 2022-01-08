# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/iam/v1beta/version"

require "google/iam/v1beta/workload_identity_pools/credentials"
require "google/iam/v1beta/workload_identity_pools/paths"
require "google/iam/v1beta/workload_identity_pools/operations"
require "google/iam/v1beta/workload_identity_pools/client"

module Google
  module Iam
    module V1beta
      ##
      # Manages WorkloadIdentityPools.
      #
      # To load this service and instantiate a client:
      #
      #     require "google/iam/v1beta/workload_identity_pools"
      #     client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new
      #
      module WorkloadIdentityPools
      end
    end
  end
end

helper_path = ::File.join __dir__, "workload_identity_pools", "helpers.rb"
require "google/iam/v1beta/workload_identity_pools/helpers" if ::File.file? helper_path
