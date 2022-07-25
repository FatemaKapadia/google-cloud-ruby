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
    module Monitoring
      module MetricsScope
        module V1
          # Represents a [Metrics
          # Scope](https://cloud.google.com/monitoring/settings#concept-scope) in Cloud
          # Monitoring, which specifies one or more Google projects and zero or more AWS
          # accounts to monitor together.
          # @!attribute [rw] name
          #   @return [::String]
          #     Immutable. The resource name of the Monitoring Metrics Scope.
          #     On input, the resource name can be specified with the
          #     scoping project ID or number. On output, the resource name is
          #     specified with the scoping project number.
          #     Example:
          #     `locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}`
          # @!attribute [r] create_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The time when this `Metrics Scope` was created.
          # @!attribute [r] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The time when this `Metrics Scope` record was last updated.
          # @!attribute [r] monitored_projects
          #   @return [::Array<::Google::Cloud::Monitoring::MetricsScope::V1::MonitoredProject>]
          #     Output only. The list of projects monitored by this `Metrics Scope`.
          class MetricsScope
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A [project being
          # monitored](https://cloud.google.com/monitoring/settings/multiple-projects#create-multi)
          # by a `Metrics Scope`.
          # @!attribute [rw] name
          #   @return [::String]
          #     Immutable. The resource name of the `MonitoredProject`. On input, the resource name
          #     includes the scoping project ID and monitored project ID. On output, it
          #     contains the equivalent project numbers.
          #     Example:
          #     `locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}`
          # @!attribute [r] create_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The time when this `MonitoredProject` was created.
          class MonitoredProject
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
