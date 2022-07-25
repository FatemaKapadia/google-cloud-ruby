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
    module Bigquery
      module Migration
        module V2
          # The translation config to capture necessary settings for a translation task
          # and subtask.
          # @!attribute [rw] gcs_source_path
          #   @return [::String]
          #     The Cloud Storage path for a directory of files to translate in a task.
          # @!attribute [rw] gcs_target_path
          #   @return [::String]
          #     The Cloud Storage path to write back the corresponding input files to.
          # @!attribute [rw] source_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::Dialect]
          #     The dialect of the input files.
          # @!attribute [rw] target_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::Dialect]
          #     The target dialect for the engine to translate the input to.
          # @!attribute [rw] name_mapping_list
          #   @return [::Google::Cloud::Bigquery::Migration::V2::ObjectNameMappingList]
          #     The mapping of objects to their desired output names in list form.
          # @!attribute [rw] source_env
          #   @return [::Google::Cloud::Bigquery::Migration::V2::SourceEnv]
          #     The default source environment values for the translation.
          class TranslationConfigDetails
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The possible dialect options for translation.
          # @!attribute [rw] bigquery_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::BigQueryDialect]
          #     The BigQuery dialect
          # @!attribute [rw] hiveql_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::HiveQLDialect]
          #     The HiveQL dialect
          # @!attribute [rw] redshift_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::RedshiftDialect]
          #     The Redshift dialect
          # @!attribute [rw] teradata_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::TeradataDialect]
          #     The Teradata dialect
          # @!attribute [rw] oracle_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::OracleDialect]
          #     The Oracle dialect
          # @!attribute [rw] sparksql_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::SparkSQLDialect]
          #     The SparkSQL dialect
          # @!attribute [rw] snowflake_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::SnowflakeDialect]
          #     The Snowflake dialect
          # @!attribute [rw] netezza_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::NetezzaDialect]
          #     The Netezza dialect
          # @!attribute [rw] azure_synapse_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::AzureSynapseDialect]
          #     The Azure Synapse dialect
          # @!attribute [rw] vertica_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::VerticaDialect]
          #     The Vertica dialect
          # @!attribute [rw] sql_server_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::SQLServerDialect]
          #     The SQL Server dialect
          # @!attribute [rw] postgresql_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::PostgresqlDialect]
          #     The Postgresql dialect
          # @!attribute [rw] presto_dialect
          #   @return [::Google::Cloud::Bigquery::Migration::V2::PrestoDialect]
          #     The Presto dialect
          class Dialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dialect definition for BigQuery.
          class BigQueryDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dialect definition for HiveQL.
          class HiveQLDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dialect definition for Redshift.
          class RedshiftDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dialect definition for Teradata.
          # @!attribute [rw] mode
          #   @return [::Google::Cloud::Bigquery::Migration::V2::TeradataDialect::Mode]
          #     Which Teradata sub-dialect mode the user specifies.
          class TeradataDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The sub-dialect options for Teradata.
            module Mode
              # Unspecified mode.
              MODE_UNSPECIFIED = 0

              # Teradata SQL mode.
              SQL = 1

              # BTEQ mode (which includes SQL).
              BTEQ = 2
            end
          end

          # The dialect definition for Oracle.
          class OracleDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dialect definition for SparkSQL.
          class SparkSQLDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dialect definition for Snowflake.
          class SnowflakeDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dialect definition for Netezza.
          class NetezzaDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dialect definition for Azure Synapse.
          class AzureSynapseDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dialect definition for Vertica.
          class VerticaDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dialect definition for SQL Server.
          class SQLServerDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dialect definition for Postgresql.
          class PostgresqlDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dialect definition for Presto.
          class PrestoDialect
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a map of name mappings using a list of key:value proto messages of
          # existing name to desired output name.
          # @!attribute [rw] name_map
          #   @return [::Array<::Google::Cloud::Bigquery::Migration::V2::ObjectNameMapping>]
          #     The elements of the object name map.
          class ObjectNameMappingList
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a key-value pair of NameMappingKey to NameMappingValue to
          # represent the mapping of SQL names from the input value to desired output.
          # @!attribute [rw] source
          #   @return [::Google::Cloud::Bigquery::Migration::V2::NameMappingKey]
          #     The name of the object in source that is being mapped.
          # @!attribute [rw] target
          #   @return [::Google::Cloud::Bigquery::Migration::V2::NameMappingValue]
          #     The desired target name of the object that is being mapped.
          class ObjectNameMapping
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The potential components of a full name mapping that will be mapped
          # during translation in the source data warehouse.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Bigquery::Migration::V2::NameMappingKey::Type]
          #     The type of object that is being mapped.
          # @!attribute [rw] database
          #   @return [::String]
          #     The database name (BigQuery project ID equivalent in the source data
          #     warehouse).
          # @!attribute [rw] schema
          #   @return [::String]
          #     The schema name (BigQuery dataset equivalent in the source data warehouse).
          # @!attribute [rw] relation
          #   @return [::String]
          #     The relation name (BigQuery table or view equivalent in the source data
          #     warehouse).
          # @!attribute [rw] attribute
          #   @return [::String]
          #     The attribute name (BigQuery column equivalent in the source data
          #     warehouse).
          class NameMappingKey
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The type of the object that is being mapped.
            module Type
              # Unspecified name mapping type.
              TYPE_UNSPECIFIED = 0

              # The object being mapped is a database.
              DATABASE = 1

              # The object being mapped is a schema.
              SCHEMA = 2

              # The object being mapped is a relation.
              RELATION = 3

              # The object being mapped is an attribute.
              ATTRIBUTE = 4

              # The object being mapped is a relation alias.
              RELATION_ALIAS = 5

              # The object being mapped is a an attribute alias.
              ATTRIBUTE_ALIAS = 6

              # The object being mapped is a function.
              FUNCTION = 7
            end
          end

          # The potential components of a full name mapping that will be mapped
          # during translation in the target data warehouse.
          # @!attribute [rw] database
          #   @return [::String]
          #     The database name (BigQuery project ID equivalent in the target data
          #     warehouse).
          # @!attribute [rw] schema
          #   @return [::String]
          #     The schema name (BigQuery dataset equivalent in the target data warehouse).
          # @!attribute [rw] relation
          #   @return [::String]
          #     The relation name (BigQuery table or view equivalent in the target data
          #     warehouse).
          # @!attribute [rw] attribute
          #   @return [::String]
          #     The attribute name (BigQuery column equivalent in the target data
          #     warehouse).
          class NameMappingValue
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents the default source environment values for the translation.
          # @!attribute [rw] default_database
          #   @return [::String]
          #     The default database name to fully qualify SQL objects when their database
          #     name is missing.
          # @!attribute [rw] schema_search_path
          #   @return [::Array<::String>]
          #     The schema search path. When SQL objects are missing schema name,
          #     translation engine will search through this list to find the value.
          class SourceEnv
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
