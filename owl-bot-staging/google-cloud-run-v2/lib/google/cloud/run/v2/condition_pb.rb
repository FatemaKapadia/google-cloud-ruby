# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/run/v2/condition.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/run/v2/condition.proto", :syntax => :proto3) do
    add_message "google.cloud.run.v2.Condition" do
      optional :type, :string, 1
      optional :state, :enum, 2, "google.cloud.run.v2.Condition.State"
      optional :message, :string, 3
      optional :last_transition_time, :message, 4, "google.protobuf.Timestamp"
      optional :severity, :enum, 5, "google.cloud.run.v2.Condition.Severity"
      oneof :reasons do
        optional :reason, :enum, 6, "google.cloud.run.v2.Condition.CommonReason"
        optional :revision_reason, :enum, 9, "google.cloud.run.v2.Condition.RevisionReason"
        optional :execution_reason, :enum, 11, "google.cloud.run.v2.Condition.ExecutionReason"
      end
    end
    add_enum "google.cloud.run.v2.Condition.State" do
      value :STATE_UNSPECIFIED, 0
      value :CONDITION_PENDING, 1
      value :CONDITION_RECONCILING, 2
      value :CONDITION_FAILED, 3
      value :CONDITION_SUCCEEDED, 4
    end
    add_enum "google.cloud.run.v2.Condition.Severity" do
      value :SEVERITY_UNSPECIFIED, 0
      value :ERROR, 1
      value :WARNING, 2
      value :INFO, 3
    end
    add_enum "google.cloud.run.v2.Condition.CommonReason" do
      value :COMMON_REASON_UNDEFINED, 0
      value :UNKNOWN, 1
      value :REVISION_FAILED, 3
      value :PROGRESS_DEADLINE_EXCEEDED, 4
      value :CONTAINER_MISSING, 6
      value :CONTAINER_PERMISSION_DENIED, 7
      value :CONTAINER_IMAGE_UNAUTHORIZED, 8
      value :CONTAINER_IMAGE_AUTHORIZATION_CHECK_FAILED, 9
      value :ENCRYPTION_KEY_PERMISSION_DENIED, 10
      value :ENCRYPTION_KEY_CHECK_FAILED, 11
      value :SECRETS_ACCESS_CHECK_FAILED, 12
      value :WAITING_FOR_OPERATION, 13
      value :IMMEDIATE_RETRY, 14
      value :POSTPONED_RETRY, 15
      value :INTERNAL, 16
    end
    add_enum "google.cloud.run.v2.Condition.RevisionReason" do
      value :REVISION_REASON_UNDEFINED, 0
      value :PENDING, 1
      value :RESERVE, 2
      value :RETIRED, 3
      value :RETIRING, 4
      value :RECREATING, 5
      value :HEALTH_CHECK_CONTAINER_ERROR, 6
      value :CUSTOMIZED_PATH_RESPONSE_PENDING, 7
      value :MIN_INSTANCES_NOT_PROVISIONED, 8
      value :ACTIVE_REVISION_LIMIT_REACHED, 9
      value :NO_DEPLOYMENT, 10
      value :HEALTH_CHECK_SKIPPED, 11
    end
    add_enum "google.cloud.run.v2.Condition.ExecutionReason" do
      value :EXECUTION_REASON_UNDEFINED, 0
      value :JOB_STATUS_SERVICE_POLLING_ERROR, 1
      value :NON_ZERO_EXIT_CODE, 2
    end
  end
end

module Google
  module Cloud
    module Run
      module V2
        Condition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Condition").msgclass
        Condition::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Condition.State").enummodule
        Condition::Severity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Condition.Severity").enummodule
        Condition::CommonReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Condition.CommonReason").enummodule
        Condition::RevisionReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Condition.RevisionReason").enummodule
        Condition::ExecutionReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Condition.ExecutionReason").enummodule
      end
    end
  end
end
