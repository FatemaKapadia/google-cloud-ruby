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
require "google/cloud/access_approval/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :access_approval do |config|
  config.add_field! :endpoint,      "accessapproval.googleapis.com", match: ::String
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
    module AccessApproval
      ##
      # Create a new client object for AccessApproval.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AccessApproval::V1::AccessApproval::Client](https://googleapis.dev/ruby/google-cloud-access_approval-v1/latest/Google/Cloud/AccessApproval/V1/AccessApproval/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the AccessApproval service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About AccessApproval
      #
      # This API allows a customer to manage accesses to cloud resources by
      # Google personnel. It defines the following resource model:
      #
      # - The API has a collection of
      #   ApprovalRequest
      #   resources, named `approvalRequests/{approval_request_id}`
      # - The API has top-level settings per Project/Folder/Organization, named
      #   `accessApprovalSettings`
      #
      # The service also periodically emails a list of recipients, defined at the
      # Project/Folder/Organization level in the accessApprovalSettings, when there
      # is a pending ApprovalRequest for them to act on. The ApprovalRequests can
      # also optionally be published to a Cloud Pub/Sub topic owned by the customer
      # (for Beta, the Pub/Sub setup is managed manually).
      #
      # ApprovalRequests can be approved or dismissed. Google personel can only
      # access the indicated resource or resources if the request is approved
      # (subject to some exclusions:
      # https://cloud.google.com/access-approval/docs/overview#exclusions).
      #
      # Note: Using Access Approval functionality will mean that Google may not be
      # able to meet the SLAs for your chosen products, as any support response times
      # may be dramatically increased. As such the SLAs do not apply to any service
      # disruption to the extent impacted by Customer's use of Access Approval. Do
      # not enable Access Approval for projects where you may require high service
      # availability and rapid response by Google Cloud Support.
      #
      # After a request is approved or dismissed, no further action may be taken on
      # it. Requests with the requested_expiration in the past or with no activity
      # for 14 days are considered dismissed. When an approval expires, the request
      # is considered dismissed.
      #
      # If a request is not approved or dismissed, we call it pending.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [AccessApproval::Client] A client object for the specified version.
      #
      def self.access_approval version: :v1, &block
        require "google/cloud/access_approval/#{version.to_s.downcase}"

        package_name = Google::Cloud::AccessApproval
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::AccessApproval.const_get package_name
        package_module.const_get(:AccessApproval).const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-access_approval library.
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
        yield ::Google::Cloud.configure.access_approval if block_given?

        ::Google::Cloud.configure.access_approval
      end
    end
  end
end

helper_path = ::File.join __dir__, "access_approval", "helpers.rb"
require "google/cloud/access_approval/helpers" if ::File.file? helper_path
