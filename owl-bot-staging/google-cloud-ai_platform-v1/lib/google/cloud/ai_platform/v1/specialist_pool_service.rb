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

require "google/cloud/ai_platform/v1/version"

require "google/cloud/ai_platform/v1/specialist_pool_service/credentials"
require "google/cloud/ai_platform/v1/specialist_pool_service/paths"
require "google/cloud/ai_platform/v1/specialist_pool_service/operations"
require "google/cloud/ai_platform/v1/specialist_pool_service/client"

module Google
  module Cloud
    module AIPlatform
      module V1
        ##
        # A service for creating and managing Customer SpecialistPools.
        # When customers start Data Labeling jobs, they can reuse/create Specialist
        # Pools to bring their own Specialists to label the data.
        # Customers can add/remove Managers for the Specialist Pool on Cloud console,
        # then Managers will get email notifications to manage Specialists and tasks on
        # CrowdCompute console.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/ai_platform/v1/specialist_pool_service"
        #     client = ::Google::Cloud::AIPlatform::V1::SpecialistPoolService::Client.new
        #
        module SpecialistPoolService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "specialist_pool_service", "helpers.rb"
require "google/cloud/ai_platform/v1/specialist_pool_service/helpers" if ::File.file? helper_path
