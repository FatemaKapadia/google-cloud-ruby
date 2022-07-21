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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/network_security/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :network_security do |config|
  config.add_field! :endpoint,      "networksecurity.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module NetworkSecurity
      ##
      # Create a new client object for NetworkSecurity.
      #
      # By default, this returns an instance of
      # [Google::Cloud::NetworkSecurity::V1beta1::NetworkSecurity::Client](https://googleapis.dev/ruby/google-cloud-network_security-v1beta1/latest/Google/Cloud/NetworkSecurity/V1beta1/NetworkSecurity/Client.html)
      # for version V1beta1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the NetworkSecurity service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About NetworkSecurity
      #
      # Network Security API provides resources to configure authentication and
      # authorization policies. Refer to per API resource documentation for more
      # information.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1beta1`.
      # @return [NetworkSecurity::Client] A client object for the specified version.
      #
      def self.network_security version: :v1beta1, &block
        require "google/cloud/network_security/#{version.to_s.downcase}"

        package_name = Google::Cloud::NetworkSecurity
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::NetworkSecurity.const_get package_name
        package_module.const_get(:NetworkSecurity).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Locations.
      #
      # By default, this returns an instance of
      # [Google::Cloud::NetworkSecurity::V1beta1::Locations::Client](https://googleapis.dev/ruby/google-cloud-network_security-v1beta1/latest/Google/Cloud/NetworkSecurity/V1beta1/Locations/Client.html)
      # for version V1beta1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the Locations service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About Locations
      #
      # An abstract interface that provides location-related information for
      # a service. Service-specific metadata is provided through the
      # Location.metadata field.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1beta1`.
      # @return [Locations::Client] A client object for the specified version.
      #
      def self.locations version: :v1beta1, &block
        require "google/cloud/network_security/#{version.to_s.downcase}"

        package_name = Google::Cloud::NetworkSecurity
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::NetworkSecurity.const_get package_name
        package_module.const_get(:Locations).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for IAMPolicy.
      #
      # By default, this returns an instance of
      # [Google::Cloud::NetworkSecurity::V1beta1::IAMPolicy::Client](https://googleapis.dev/ruby/google-cloud-network_security-v1beta1/latest/Google/Cloud/NetworkSecurity/V1beta1/IAMPolicy/Client.html)
      # for version V1beta1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the IAMPolicy service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About IAMPolicy
      #
      # API Overview
      #
      #
      # Manages Identity and Access Management (IAM) policies.
      #
      # Any implementation of an API that offers access control features
      # implements the google.iam.v1.IAMPolicy interface.
      #
      # ## Data model
      #
      # Access control is applied when a principal (user or service account), takes
      # some action on a resource exposed by a service. Resources, identified by
      # URI-like names, are the unit of access control specification. Service
      # implementations can choose the granularity of access control and the
      # supported permissions for their resources.
      # For example one database service may allow access control to be
      # specified only at the Table level, whereas another might allow access control
      # to also be specified at the Column level.
      #
      # ## Policy Structure
      #
      # See google.iam.v1.Policy
      #
      # This is intentionally not a CRUD style API because access control policies
      # are created and deleted implicitly with the resources to which they are
      # attached.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1beta1`.
      # @return [IAMPolicy::Client] A client object for the specified version.
      #
      def self.iam_policy version: :v1beta1, &block
        require "google/cloud/network_security/#{version.to_s.downcase}"

        package_name = Google::Cloud::NetworkSecurity
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::NetworkSecurity.const_get package_name
        package_module.const_get(:IAMPolicy).const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-network_security library.
      #
      # The following configuration parameters are supported:
      #
      # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
      #   The path to the keyfile as a String, the contents of the keyfile as a
      #   Hash, or a Google::Auth::Credentials object.
      # * `lib_name` (*type:* `String`) -
      #   The library name as recorded in instrumentation and logging.
      # * `lib_version` (*type:* `String`) -
      #   The library version as recorded in instrumentation and logging.
      # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
      #   An array of interceptors that are run before calls are executed.
      # * `timeout` (*type:* `Numeric`) -
      #   Default timeout in seconds.
      # * `metadata` (*type:* `Hash{Symbol=>String}`) -
      #   Additional gRPC headers to be sent with the call.
      # * `retry_policy` (*type:* `Hash`) -
      #   The retry policy. The value is a hash with the following keys:
      #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
      #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
      #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
      #     * `:retry_codes` (*type:* `Array<String>`) -
      #       The error codes that should trigger a retry.
      #
      # @return [::Google::Cloud::Config] The default configuration used by this library
      #
      def self.configure
        yield ::Google::Cloud.configure.network_security if block_given?

        ::Google::Cloud.configure.network_security
      end
    end
  end
end

helper_path = ::File.join __dir__, "network_security", "helpers.rb"
require "google/cloud/network_security/helpers" if ::File.file? helper_path
