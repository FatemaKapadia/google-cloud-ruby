# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/metastore/v1beta/metastore.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/type/dayofweek_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/metastore/v1beta/metastore.proto", :syntax => :proto3) do
    add_message "google.cloud.metastore.v1beta.Service" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      optional :network, :string, 7
      optional :endpoint_uri, :string, 8
      optional :port, :int32, 9
      optional :state, :enum, 10, "google.cloud.metastore.v1beta.Service.State"
      optional :state_message, :string, 11
      optional :artifact_gcs_uri, :string, 12
      optional :tier, :enum, 13, "google.cloud.metastore.v1beta.Service.Tier"
      optional :metadata_integration, :message, 14, "google.cloud.metastore.v1beta.MetadataIntegration"
      optional :maintenance_window, :message, 15, "google.cloud.metastore.v1beta.MaintenanceWindow"
      optional :uid, :string, 16
      optional :metadata_management_activity, :message, 17, "google.cloud.metastore.v1beta.MetadataManagementActivity"
      optional :release_channel, :enum, 19, "google.cloud.metastore.v1beta.Service.ReleaseChannel"
      oneof :metastore_config do
        optional :hive_metastore_config, :message, 5, "google.cloud.metastore.v1beta.HiveMetastoreConfig"
      end
    end
    add_enum "google.cloud.metastore.v1beta.Service.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :ACTIVE, 2
      value :SUSPENDING, 3
      value :SUSPENDED, 4
      value :UPDATING, 5
      value :DELETING, 6
      value :ERROR, 7
    end
    add_enum "google.cloud.metastore.v1beta.Service.Tier" do
      value :TIER_UNSPECIFIED, 0
      value :DEVELOPER, 1
      value :ENTERPRISE, 3
    end
    add_enum "google.cloud.metastore.v1beta.Service.ReleaseChannel" do
      value :RELEASE_CHANNEL_UNSPECIFIED, 0
      value :CANARY, 1
      value :STABLE, 2
    end
    add_message "google.cloud.metastore.v1beta.MetadataIntegration" do
      optional :data_catalog_config, :message, 1, "google.cloud.metastore.v1beta.DataCatalogConfig"
    end
    add_message "google.cloud.metastore.v1beta.DataCatalogConfig" do
      optional :enabled, :bool, 2
    end
    add_message "google.cloud.metastore.v1beta.MaintenanceWindow" do
      optional :hour_of_day, :message, 1, "google.protobuf.Int32Value"
      optional :day_of_week, :enum, 2, "google.type.DayOfWeek"
    end
    add_message "google.cloud.metastore.v1beta.HiveMetastoreConfig" do
      optional :version, :string, 1
      map :config_overrides, :string, :string, 2
      optional :kerberos_config, :message, 3, "google.cloud.metastore.v1beta.KerberosConfig"
    end
    add_message "google.cloud.metastore.v1beta.KerberosConfig" do
      optional :keytab, :message, 1, "google.cloud.metastore.v1beta.Secret"
      optional :principal, :string, 2
      optional :krb5_config_gcs_uri, :string, 3
    end
    add_message "google.cloud.metastore.v1beta.Secret" do
      oneof :value do
        optional :cloud_secret, :string, 2
      end
    end
    add_message "google.cloud.metastore.v1beta.MetadataManagementActivity" do
      repeated :metadata_exports, :message, 1, "google.cloud.metastore.v1beta.MetadataExport"
      repeated :restores, :message, 2, "google.cloud.metastore.v1beta.Restore"
    end
    add_message "google.cloud.metastore.v1beta.MetadataImport" do
      optional :name, :string, 1
      optional :description, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
      optional :state, :enum, 5, "google.cloud.metastore.v1beta.MetadataImport.State"
      oneof :metadata do
        optional :database_dump, :message, 6, "google.cloud.metastore.v1beta.MetadataImport.DatabaseDump"
      end
    end
    add_message "google.cloud.metastore.v1beta.MetadataImport.DatabaseDump" do
      optional :database_type, :enum, 1, "google.cloud.metastore.v1beta.MetadataImport.DatabaseDump.DatabaseType"
      optional :gcs_uri, :string, 2
      optional :source_database, :string, 3
      optional :type, :enum, 4, "google.cloud.metastore.v1beta.DatabaseDumpSpec.Type"
    end
    add_enum "google.cloud.metastore.v1beta.MetadataImport.DatabaseDump.DatabaseType" do
      value :DATABASE_TYPE_UNSPECIFIED, 0
      value :MYSQL, 1
    end
    add_enum "google.cloud.metastore.v1beta.MetadataImport.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :SUCCEEDED, 2
      value :UPDATING, 3
      value :FAILED, 4
    end
    add_message "google.cloud.metastore.v1beta.MetadataExport" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :state, :enum, 3, "google.cloud.metastore.v1beta.MetadataExport.State"
      optional :database_dump_type, :enum, 5, "google.cloud.metastore.v1beta.DatabaseDumpSpec.Type"
      oneof :destination do
        optional :destination_gcs_uri, :string, 4
      end
    end
    add_enum "google.cloud.metastore.v1beta.MetadataExport.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :SUCCEEDED, 2
      value :FAILED, 3
      value :CANCELLED, 4
    end
    add_message "google.cloud.metastore.v1beta.Backup" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :end_time, :message, 3, "google.protobuf.Timestamp"
      optional :state, :enum, 4, "google.cloud.metastore.v1beta.Backup.State"
      optional :service_revision, :message, 5, "google.cloud.metastore.v1beta.Service"
      optional :description, :string, 6
    end
    add_enum "google.cloud.metastore.v1beta.Backup.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :DELETING, 2
      value :ACTIVE, 3
      value :FAILED, 4
    end
    add_message "google.cloud.metastore.v1beta.Restore" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :state, :enum, 3, "google.cloud.metastore.v1beta.Restore.State"
      optional :backup, :string, 4
      optional :type, :enum, 5, "google.cloud.metastore.v1beta.Restore.RestoreType"
      optional :details, :string, 6
    end
    add_enum "google.cloud.metastore.v1beta.Restore.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :SUCCEEDED, 2
      value :FAILED, 3
      value :CANCELLED, 4
    end
    add_enum "google.cloud.metastore.v1beta.Restore.RestoreType" do
      value :RESTORE_TYPE_UNSPECIFIED, 0
      value :FULL, 1
      value :METADATA_ONLY, 2
    end
    add_message "google.cloud.metastore.v1beta.ListServicesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.metastore.v1beta.ListServicesResponse" do
      repeated :services, :message, 1, "google.cloud.metastore.v1beta.Service"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.metastore.v1beta.GetServiceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.metastore.v1beta.CreateServiceRequest" do
      optional :parent, :string, 1
      optional :service_id, :string, 2
      optional :service, :message, 3, "google.cloud.metastore.v1beta.Service"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.metastore.v1beta.UpdateServiceRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :service, :message, 2, "google.cloud.metastore.v1beta.Service"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.metastore.v1beta.DeleteServiceRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.metastore.v1beta.ListMetadataImportsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.metastore.v1beta.ListMetadataImportsResponse" do
      repeated :metadata_imports, :message, 1, "google.cloud.metastore.v1beta.MetadataImport"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.metastore.v1beta.GetMetadataImportRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.metastore.v1beta.CreateMetadataImportRequest" do
      optional :parent, :string, 1
      optional :metadata_import_id, :string, 2
      optional :metadata_import, :message, 3, "google.cloud.metastore.v1beta.MetadataImport"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.metastore.v1beta.UpdateMetadataImportRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :metadata_import, :message, 2, "google.cloud.metastore.v1beta.MetadataImport"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.metastore.v1beta.ListBackupsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.metastore.v1beta.ListBackupsResponse" do
      repeated :backups, :message, 1, "google.cloud.metastore.v1beta.Backup"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.metastore.v1beta.GetBackupRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.metastore.v1beta.CreateBackupRequest" do
      optional :parent, :string, 1
      optional :backup_id, :string, 2
      optional :backup, :message, 3, "google.cloud.metastore.v1beta.Backup"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.metastore.v1beta.DeleteBackupRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.metastore.v1beta.ExportMetadataRequest" do
      optional :service, :string, 1
      optional :request_id, :string, 3
      optional :database_dump_type, :enum, 4, "google.cloud.metastore.v1beta.DatabaseDumpSpec.Type"
      oneof :destination do
        optional :destination_gcs_folder, :string, 2
      end
    end
    add_message "google.cloud.metastore.v1beta.RestoreServiceRequest" do
      optional :service, :string, 1
      optional :backup, :string, 2
      optional :restore_type, :enum, 3, "google.cloud.metastore.v1beta.Restore.RestoreType"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.metastore.v1beta.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_message, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
    end
    add_message "google.cloud.metastore.v1beta.LocationMetadata" do
      repeated :supported_hive_metastore_versions, :message, 1, "google.cloud.metastore.v1beta.LocationMetadata.HiveMetastoreVersion"
    end
    add_message "google.cloud.metastore.v1beta.LocationMetadata.HiveMetastoreVersion" do
      optional :version, :string, 1
      optional :is_default, :bool, 2
    end
    add_message "google.cloud.metastore.v1beta.DatabaseDumpSpec" do
    end
    add_enum "google.cloud.metastore.v1beta.DatabaseDumpSpec.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :MYSQL, 1
    end
  end
end

module Google
  module Cloud
    module Metastore
      module V1beta
        Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Service").msgclass
        Service::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Service.State").enummodule
        Service::Tier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Service.Tier").enummodule
        Service::ReleaseChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Service.ReleaseChannel").enummodule
        MetadataIntegration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataIntegration").msgclass
        DataCatalogConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.DataCatalogConfig").msgclass
        MaintenanceWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MaintenanceWindow").msgclass
        HiveMetastoreConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.HiveMetastoreConfig").msgclass
        KerberosConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.KerberosConfig").msgclass
        Secret = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Secret").msgclass
        MetadataManagementActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataManagementActivity").msgclass
        MetadataImport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataImport").msgclass
        MetadataImport::DatabaseDump = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataImport.DatabaseDump").msgclass
        MetadataImport::DatabaseDump::DatabaseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataImport.DatabaseDump.DatabaseType").enummodule
        MetadataImport::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataImport.State").enummodule
        MetadataExport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataExport").msgclass
        MetadataExport::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataExport.State").enummodule
        Backup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Backup").msgclass
        Backup::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Backup.State").enummodule
        Restore = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Restore").msgclass
        Restore::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Restore.State").enummodule
        Restore::RestoreType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Restore.RestoreType").enummodule
        ListServicesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListServicesRequest").msgclass
        ListServicesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListServicesResponse").msgclass
        GetServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.GetServiceRequest").msgclass
        CreateServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.CreateServiceRequest").msgclass
        UpdateServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.UpdateServiceRequest").msgclass
        DeleteServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.DeleteServiceRequest").msgclass
        ListMetadataImportsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListMetadataImportsRequest").msgclass
        ListMetadataImportsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListMetadataImportsResponse").msgclass
        GetMetadataImportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.GetMetadataImportRequest").msgclass
        CreateMetadataImportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.CreateMetadataImportRequest").msgclass
        UpdateMetadataImportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.UpdateMetadataImportRequest").msgclass
        ListBackupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListBackupsRequest").msgclass
        ListBackupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListBackupsResponse").msgclass
        GetBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.GetBackupRequest").msgclass
        CreateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.CreateBackupRequest").msgclass
        DeleteBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.DeleteBackupRequest").msgclass
        ExportMetadataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ExportMetadataRequest").msgclass
        RestoreServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.RestoreServiceRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.OperationMetadata").msgclass
        LocationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.LocationMetadata").msgclass
        LocationMetadata::HiveMetastoreVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.LocationMetadata.HiveMetastoreVersion").msgclass
        DatabaseDumpSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.DatabaseDumpSpec").msgclass
        DatabaseDumpSpec::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.DatabaseDumpSpec.Type").enummodule
      end
    end
  end
end
