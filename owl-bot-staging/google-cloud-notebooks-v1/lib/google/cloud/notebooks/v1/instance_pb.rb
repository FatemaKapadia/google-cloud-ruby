# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/notebooks/v1/instance.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/notebooks/v1/environment_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/notebooks/v1/instance.proto", :syntax => :proto3) do
    add_message "google.cloud.notebooks.v1.ReservationAffinity" do
      optional :consume_reservation_type, :enum, 1, "google.cloud.notebooks.v1.ReservationAffinity.Type"
      optional :key, :string, 2
      repeated :values, :string, 3
    end
    add_enum "google.cloud.notebooks.v1.ReservationAffinity.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :NO_RESERVATION, 1
      value :ANY_RESERVATION, 2
      value :SPECIFIC_RESERVATION, 3
    end
    add_message "google.cloud.notebooks.v1.Instance" do
      optional :name, :string, 1
      optional :post_startup_script, :string, 4
      optional :proxy_uri, :string, 5
      repeated :instance_owners, :string, 6
      optional :service_account, :string, 7
      repeated :service_account_scopes, :string, 31
      optional :machine_type, :string, 8
      optional :accelerator_config, :message, 9, "google.cloud.notebooks.v1.Instance.AcceleratorConfig"
      optional :state, :enum, 10, "google.cloud.notebooks.v1.Instance.State"
      optional :install_gpu_driver, :bool, 11
      optional :custom_gpu_driver_path, :string, 12
      optional :boot_disk_type, :enum, 13, "google.cloud.notebooks.v1.Instance.DiskType"
      optional :boot_disk_size_gb, :int64, 14
      optional :data_disk_type, :enum, 25, "google.cloud.notebooks.v1.Instance.DiskType"
      optional :data_disk_size_gb, :int64, 26
      optional :no_remove_data_disk, :bool, 27
      optional :disk_encryption, :enum, 15, "google.cloud.notebooks.v1.Instance.DiskEncryption"
      optional :kms_key, :string, 16
      repeated :disks, :message, 28, "google.cloud.notebooks.v1.Instance.Disk"
      optional :shielded_instance_config, :message, 30, "google.cloud.notebooks.v1.Instance.ShieldedInstanceConfig"
      optional :no_public_ip, :bool, 17
      optional :no_proxy_access, :bool, 18
      optional :network, :string, 19
      optional :subnet, :string, 20
      map :labels, :string, :string, 21
      map :metadata, :string, :string, 22
      repeated :tags, :string, 32
      repeated :upgrade_history, :message, 29, "google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry"
      optional :nic_type, :enum, 33, "google.cloud.notebooks.v1.Instance.NicType"
      optional :reservation_affinity, :message, 34, "google.cloud.notebooks.v1.ReservationAffinity"
      optional :creator, :string, 36
      optional :can_ip_forward, :bool, 39
      optional :create_time, :message, 23, "google.protobuf.Timestamp"
      optional :update_time, :message, 24, "google.protobuf.Timestamp"
      oneof :environment do
        optional :vm_image, :message, 2, "google.cloud.notebooks.v1.VmImage"
        optional :container_image, :message, 3, "google.cloud.notebooks.v1.ContainerImage"
      end
    end
    add_message "google.cloud.notebooks.v1.Instance.AcceleratorConfig" do
      optional :type, :enum, 1, "google.cloud.notebooks.v1.Instance.AcceleratorType"
      optional :core_count, :int64, 2
    end
    add_message "google.cloud.notebooks.v1.Instance.Disk" do
      optional :auto_delete, :bool, 1
      optional :boot, :bool, 2
      optional :device_name, :string, 3
      optional :disk_size_gb, :int64, 4
      repeated :guest_os_features, :message, 5, "google.cloud.notebooks.v1.Instance.Disk.GuestOsFeature"
      optional :index, :int64, 6
      optional :interface, :string, 7
      optional :kind, :string, 8
      repeated :licenses, :string, 9
      optional :mode, :string, 10
      optional :source, :string, 11
      optional :type, :string, 12
    end
    add_message "google.cloud.notebooks.v1.Instance.Disk.GuestOsFeature" do
      optional :type, :string, 1
    end
    add_message "google.cloud.notebooks.v1.Instance.ShieldedInstanceConfig" do
      optional :enable_secure_boot, :bool, 1
      optional :enable_vtpm, :bool, 2
      optional :enable_integrity_monitoring, :bool, 3
    end
    add_message "google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry" do
      optional :snapshot, :string, 1
      optional :vm_image, :string, 2
      optional :container_image, :string, 3
      optional :framework, :string, 4
      optional :version, :string, 5
      optional :state, :enum, 6, "google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry.State"
      optional :create_time, :message, 7, "google.protobuf.Timestamp"
      optional :target_image, :string, 8
      optional :action, :enum, 9, "google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry.Action"
      optional :target_version, :string, 10
    end
    add_enum "google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry.State" do
      value :STATE_UNSPECIFIED, 0
      value :STARTED, 1
      value :SUCCEEDED, 2
      value :FAILED, 3
    end
    add_enum "google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry.Action" do
      value :ACTION_UNSPECIFIED, 0
      value :UPGRADE, 1
      value :ROLLBACK, 2
    end
    add_enum "google.cloud.notebooks.v1.Instance.AcceleratorType" do
      value :ACCELERATOR_TYPE_UNSPECIFIED, 0
      value :NVIDIA_TESLA_K80, 1
      value :NVIDIA_TESLA_P100, 2
      value :NVIDIA_TESLA_V100, 3
      value :NVIDIA_TESLA_P4, 4
      value :NVIDIA_TESLA_T4, 5
      value :NVIDIA_TESLA_A100, 11
      value :NVIDIA_TESLA_T4_VWS, 8
      value :NVIDIA_TESLA_P100_VWS, 9
      value :NVIDIA_TESLA_P4_VWS, 10
      value :TPU_V2, 6
      value :TPU_V3, 7
    end
    add_enum "google.cloud.notebooks.v1.Instance.State" do
      value :STATE_UNSPECIFIED, 0
      value :STARTING, 1
      value :PROVISIONING, 2
      value :ACTIVE, 3
      value :STOPPING, 4
      value :STOPPED, 5
      value :DELETED, 6
      value :UPGRADING, 7
      value :INITIALIZING, 8
      value :REGISTERING, 9
      value :SUSPENDING, 10
      value :SUSPENDED, 11
    end
    add_enum "google.cloud.notebooks.v1.Instance.DiskType" do
      value :DISK_TYPE_UNSPECIFIED, 0
      value :PD_STANDARD, 1
      value :PD_SSD, 2
      value :PD_BALANCED, 3
      value :PD_EXTREME, 4
    end
    add_enum "google.cloud.notebooks.v1.Instance.DiskEncryption" do
      value :DISK_ENCRYPTION_UNSPECIFIED, 0
      value :GMEK, 1
      value :CMEK, 2
    end
    add_enum "google.cloud.notebooks.v1.Instance.NicType" do
      value :UNSPECIFIED_NIC_TYPE, 0
      value :VIRTIO_NET, 1
      value :GVNIC, 2
    end
  end
end

module Google
  module Cloud
    module Notebooks
      module V1
        ReservationAffinity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ReservationAffinity").msgclass
        ReservationAffinity::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ReservationAffinity.Type").enummodule
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance").msgclass
        Instance::AcceleratorConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.AcceleratorConfig").msgclass
        Instance::Disk = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.Disk").msgclass
        Instance::Disk::GuestOsFeature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.Disk.GuestOsFeature").msgclass
        Instance::ShieldedInstanceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.ShieldedInstanceConfig").msgclass
        Instance::UpgradeHistoryEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry").msgclass
        Instance::UpgradeHistoryEntry::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry.State").enummodule
        Instance::UpgradeHistoryEntry::Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry.Action").enummodule
        Instance::AcceleratorType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.AcceleratorType").enummodule
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.State").enummodule
        Instance::DiskType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.DiskType").enummodule
        Instance::DiskEncryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.DiskEncryption").enummodule
        Instance::NicType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.NicType").enummodule
      end
    end
  end
end
