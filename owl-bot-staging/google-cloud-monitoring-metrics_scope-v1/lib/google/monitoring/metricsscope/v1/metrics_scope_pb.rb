# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/metricsscope/v1/metrics_scope.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/metricsscope/v1/metrics_scope.proto", :syntax => :proto3) do
    add_message "google.monitoring.metricsscope.v1.MetricsScope" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      repeated :monitored_projects, :message, 4, "google.monitoring.metricsscope.v1.MonitoredProject"
    end
    add_message "google.monitoring.metricsscope.v1.MonitoredProject" do
      optional :name, :string, 1
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module MetricsScope
        module V1
          MetricsScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.metricsscope.v1.MetricsScope").msgclass
          MonitoredProject = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.metricsscope.v1.MonitoredProject").msgclass
        end
      end
    end
  end
end
