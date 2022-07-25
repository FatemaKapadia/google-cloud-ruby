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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/notebooks/v1beta1/notebook_service"

class ::Google::Cloud::Notebooks::V1beta1::NotebookService::ClientPathsTest < Minitest::Test
  def test_environment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Notebooks::V1beta1::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.environment_path project: "value0", environment: "value1"
      assert_equal "projects/value0/environments/value1", path
    end
  end

  def test_instance_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Notebooks::V1beta1::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.instance_path project: "value0", instance: "value1"
      assert_equal "projects/value0/instances/value1", path
    end
  end
end
