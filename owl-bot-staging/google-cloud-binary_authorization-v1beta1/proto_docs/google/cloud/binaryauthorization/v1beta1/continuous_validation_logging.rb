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


module Google
  module Cloud
    module BinaryAuthorization
      module V1beta1
        # Represents an auditing event from Continuous Validation.
        # @!attribute [rw] pod_event
        #   @return [::Google::Cloud::BinaryAuthorization::V1beta1::ContinuousValidationEvent::ContinuousValidationPodEvent]
        #     Pod event.
        # @!attribute [rw] unsupported_policy_event
        #   @return [::Google::Cloud::BinaryAuthorization::V1beta1::ContinuousValidationEvent::UnsupportedPolicyEvent]
        #     Unsupported policy event.
        class ContinuousValidationEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # An auditing event for one Pod.
          # @!attribute [rw] pod_namespace
          #   @return [::String]
          #     The k8s namespace of the Pod.
          # @!attribute [rw] pod
          #   @return [::String]
          #     The name of the Pod.
          # @!attribute [rw] deploy_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Deploy time of the Pod from k8s.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Termination time of the Pod from k8s, or nothing if still running.
          # @!attribute [rw] verdict
          #   @return [::Google::Cloud::BinaryAuthorization::V1beta1::ContinuousValidationEvent::ContinuousValidationPodEvent::PolicyConformanceVerdict]
          #     Auditing verdict for this Pod.
          # @!attribute [rw] images
          #   @return [::Array<::Google::Cloud::BinaryAuthorization::V1beta1::ContinuousValidationEvent::ContinuousValidationPodEvent::ImageDetails>]
          #     List of images with auditing details.
          class ContinuousValidationPodEvent
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Container image with auditing details.
            # @!attribute [rw] image
            #   @return [::String]
            #     The name of the image.
            # @!attribute [rw] result
            #   @return [::Google::Cloud::BinaryAuthorization::V1beta1::ContinuousValidationEvent::ContinuousValidationPodEvent::ImageDetails::AuditResult]
            #     The result of the audit for this image.
            # @!attribute [rw] description
            #   @return [::String]
            #     Description of the above result.
            class ImageDetails
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Result of the audit.
              module AuditResult
                # Unspecified result. This is an error.
                AUDIT_RESULT_UNSPECIFIED = 0

                # Image is allowed.
                ALLOW = 1

                # Image is denied.
                DENY = 2
              end
            end

            # Audit time policy conformance verdict.
            module PolicyConformanceVerdict
              # We should always have a verdict. This is an error.
              POLICY_CONFORMANCE_VERDICT_UNSPECIFIED = 0

              # The pod violates the policy.
              VIOLATES_POLICY = 1
            end
          end

          # An event describing that the project policy is unsupported by CV.
          # @!attribute [rw] description
          #   @return [::String]
          #     A description of the unsupported policy.
          class UnsupportedPolicyEvent
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
