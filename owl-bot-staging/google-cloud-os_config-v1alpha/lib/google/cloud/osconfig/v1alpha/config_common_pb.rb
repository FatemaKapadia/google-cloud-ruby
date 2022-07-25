# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/osconfig/v1alpha/config_common.proto

require 'google/protobuf'

require 'google/api/annotations_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/osconfig/v1alpha/config_common.proto", :syntax => :proto3) do
    add_message "google.cloud.osconfig.v1alpha.OSPolicyResourceConfigStep" do
      optional :type, :enum, 1, "google.cloud.osconfig.v1alpha.OSPolicyResourceConfigStep.Type"
      optional :outcome, :enum, 2, "google.cloud.osconfig.v1alpha.OSPolicyResourceConfigStep.Outcome"
      optional :error_message, :string, 3
    end
    add_enum "google.cloud.osconfig.v1alpha.OSPolicyResourceConfigStep.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :VALIDATION, 1
      value :DESIRED_STATE_CHECK, 2
      value :DESIRED_STATE_ENFORCEMENT, 3
      value :DESIRED_STATE_CHECK_POST_ENFORCEMENT, 4
    end
    add_enum "google.cloud.osconfig.v1alpha.OSPolicyResourceConfigStep.Outcome" do
      value :OUTCOME_UNSPECIFIED, 0
      value :SUCCEEDED, 1
      value :FAILED, 2
    end
    add_message "google.cloud.osconfig.v1alpha.OSPolicyResourceCompliance" do
      optional :os_policy_resource_id, :string, 1
      repeated :config_steps, :message, 2, "google.cloud.osconfig.v1alpha.OSPolicyResourceConfigStep"
      optional :state, :enum, 3, "google.cloud.osconfig.v1alpha.OSPolicyComplianceState"
      oneof :output do
        optional :exec_resource_output, :message, 4, "google.cloud.osconfig.v1alpha.OSPolicyResourceCompliance.ExecResourceOutput"
      end
    end
    add_message "google.cloud.osconfig.v1alpha.OSPolicyResourceCompliance.ExecResourceOutput" do
      optional :enforcement_output, :bytes, 2
    end
    add_enum "google.cloud.osconfig.v1alpha.OSPolicyComplianceState" do
      value :OS_POLICY_COMPLIANCE_STATE_UNSPECIFIED, 0
      value :COMPLIANT, 1
      value :NON_COMPLIANT, 2
      value :UNKNOWN, 3
      value :NO_OS_POLICIES_APPLICABLE, 4
    end
  end
end

module Google
  module Cloud
    module OsConfig
      module V1alpha
        OSPolicyResourceConfigStep = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicyResourceConfigStep").msgclass
        OSPolicyResourceConfigStep::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicyResourceConfigStep.Type").enummodule
        OSPolicyResourceConfigStep::Outcome = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicyResourceConfigStep.Outcome").enummodule
        OSPolicyResourceCompliance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicyResourceCompliance").msgclass
        OSPolicyResourceCompliance::ExecResourceOutput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicyResourceCompliance.ExecResourceOutput").msgclass
        OSPolicyComplianceState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1alpha.OSPolicyComplianceState").enummodule
      end
    end
  end
end
