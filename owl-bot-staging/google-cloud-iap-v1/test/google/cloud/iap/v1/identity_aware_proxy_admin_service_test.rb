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

require "google/cloud/iap/v1/service_pb"
require "google/cloud/iap/v1/service_services_pb"
require "google/cloud/iap/v1/identity_aware_proxy_admin_service"

class ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_set_iam_policy
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    policy = {}
    update_mask = {}

    set_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :set_iam_policy, name
      assert_kind_of ::Google::Iam::V1::SetIamPolicyRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1::Policy), request["policy"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, set_iam_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.set_iam_policy resource: resource, policy: policy, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.set_iam_policy ::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.set_iam_policy(::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, set_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_get_iam_policy
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    options = {}

    get_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_iam_policy, name
      assert_kind_of ::Google::Iam::V1::GetIamPolicyRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1::GetPolicyOptions), request["options"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_iam_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_iam_policy({ resource: resource, options: options }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_iam_policy resource: resource, options: options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_iam_policy ::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_iam_policy({ resource: resource, options: options }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_iam_policy(::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_test_iam_permissions
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::TestIamPermissionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    permissions = ["hello world"]

    test_iam_permissions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :test_iam_permissions, name
      assert_kind_of ::Google::Iam::V1::TestIamPermissionsRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal ["hello world"], request["permissions"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, test_iam_permissions_client_stub do
      # Create client
      client = ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.test_iam_permissions({ resource: resource, permissions: permissions }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.test_iam_permissions resource: resource, permissions: permissions do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.test_iam_permissions ::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.test_iam_permissions({ resource: resource, permissions: permissions }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.test_iam_permissions(::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, test_iam_permissions_client_stub.call_rpc_count
    end
  end

  def test_get_iap_settings
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Iap::V1::IapSettings.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_iap_settings_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_iap_settings, name
      assert_kind_of ::Google::Cloud::Iap::V1::GetIapSettingsRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_iap_settings_client_stub do
      # Create client
      client = ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_iap_settings({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_iap_settings name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_iap_settings ::Google::Cloud::Iap::V1::GetIapSettingsRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_iap_settings({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_iap_settings(::Google::Cloud::Iap::V1::GetIapSettingsRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_iap_settings_client_stub.call_rpc_count
    end
  end

  def test_update_iap_settings
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Iap::V1::IapSettings.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    iap_settings = {}
    update_mask = {}

    update_iap_settings_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_iap_settings, name
      assert_kind_of ::Google::Cloud::Iap::V1::UpdateIapSettingsRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Iap::V1::IapSettings), request["iap_settings"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_iap_settings_client_stub do
      # Create client
      client = ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_iap_settings({ iap_settings: iap_settings, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_iap_settings iap_settings: iap_settings, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_iap_settings ::Google::Cloud::Iap::V1::UpdateIapSettingsRequest.new(iap_settings: iap_settings, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_iap_settings({ iap_settings: iap_settings, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_iap_settings(::Google::Cloud::Iap::V1::UpdateIapSettingsRequest.new(iap_settings: iap_settings, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_iap_settings_client_stub.call_rpc_count
    end
  end

  def test_list_tunnel_dest_groups
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Iap::V1::ListTunnelDestGroupsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_tunnel_dest_groups_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_tunnel_dest_groups, name
      assert_kind_of ::Google::Cloud::Iap::V1::ListTunnelDestGroupsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_tunnel_dest_groups_client_stub do
      # Create client
      client = ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_tunnel_dest_groups({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_tunnel_dest_groups parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_tunnel_dest_groups ::Google::Cloud::Iap::V1::ListTunnelDestGroupsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_tunnel_dest_groups({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_tunnel_dest_groups(::Google::Cloud::Iap::V1::ListTunnelDestGroupsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_tunnel_dest_groups_client_stub.call_rpc_count
    end
  end

  def test_create_tunnel_dest_group
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Iap::V1::TunnelDestGroup.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    tunnel_dest_group = {}
    tunnel_dest_group_id = "hello world"

    create_tunnel_dest_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_tunnel_dest_group, name
      assert_kind_of ::Google::Cloud::Iap::V1::CreateTunnelDestGroupRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Iap::V1::TunnelDestGroup), request["tunnel_dest_group"]
      assert_equal "hello world", request["tunnel_dest_group_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_tunnel_dest_group_client_stub do
      # Create client
      client = ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_tunnel_dest_group({ parent: parent, tunnel_dest_group: tunnel_dest_group, tunnel_dest_group_id: tunnel_dest_group_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_tunnel_dest_group parent: parent, tunnel_dest_group: tunnel_dest_group, tunnel_dest_group_id: tunnel_dest_group_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_tunnel_dest_group ::Google::Cloud::Iap::V1::CreateTunnelDestGroupRequest.new(parent: parent, tunnel_dest_group: tunnel_dest_group, tunnel_dest_group_id: tunnel_dest_group_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_tunnel_dest_group({ parent: parent, tunnel_dest_group: tunnel_dest_group, tunnel_dest_group_id: tunnel_dest_group_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_tunnel_dest_group(::Google::Cloud::Iap::V1::CreateTunnelDestGroupRequest.new(parent: parent, tunnel_dest_group: tunnel_dest_group, tunnel_dest_group_id: tunnel_dest_group_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_tunnel_dest_group_client_stub.call_rpc_count
    end
  end

  def test_get_tunnel_dest_group
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Iap::V1::TunnelDestGroup.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_tunnel_dest_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_tunnel_dest_group, name
      assert_kind_of ::Google::Cloud::Iap::V1::GetTunnelDestGroupRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_tunnel_dest_group_client_stub do
      # Create client
      client = ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_tunnel_dest_group({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_tunnel_dest_group name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_tunnel_dest_group ::Google::Cloud::Iap::V1::GetTunnelDestGroupRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_tunnel_dest_group({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_tunnel_dest_group(::Google::Cloud::Iap::V1::GetTunnelDestGroupRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_tunnel_dest_group_client_stub.call_rpc_count
    end
  end

  def test_delete_tunnel_dest_group
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_tunnel_dest_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_tunnel_dest_group, name
      assert_kind_of ::Google::Cloud::Iap::V1::DeleteTunnelDestGroupRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_tunnel_dest_group_client_stub do
      # Create client
      client = ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_tunnel_dest_group({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_tunnel_dest_group name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_tunnel_dest_group ::Google::Cloud::Iap::V1::DeleteTunnelDestGroupRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_tunnel_dest_group({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_tunnel_dest_group(::Google::Cloud::Iap::V1::DeleteTunnelDestGroupRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_tunnel_dest_group_client_stub.call_rpc_count
    end
  end

  def test_update_tunnel_dest_group
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Iap::V1::TunnelDestGroup.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    tunnel_dest_group = {}
    update_mask = {}

    update_tunnel_dest_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_tunnel_dest_group, name
      assert_kind_of ::Google::Cloud::Iap::V1::UpdateTunnelDestGroupRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Iap::V1::TunnelDestGroup), request["tunnel_dest_group"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_tunnel_dest_group_client_stub do
      # Create client
      client = ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_tunnel_dest_group({ tunnel_dest_group: tunnel_dest_group, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_tunnel_dest_group tunnel_dest_group: tunnel_dest_group, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_tunnel_dest_group ::Google::Cloud::Iap::V1::UpdateTunnelDestGroupRequest.new(tunnel_dest_group: tunnel_dest_group, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_tunnel_dest_group({ tunnel_dest_group: tunnel_dest_group, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_tunnel_dest_group(::Google::Cloud::Iap::V1::UpdateTunnelDestGroupRequest.new(tunnel_dest_group: tunnel_dest_group, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_tunnel_dest_group_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Iap::V1::IdentityAwareProxyAdminService::Client::Configuration, config
  end
end
