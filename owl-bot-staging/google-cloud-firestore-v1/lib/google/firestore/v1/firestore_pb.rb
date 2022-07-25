# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/v1/firestore.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/firestore/v1/common_pb'
require 'google/firestore/v1/document_pb'
require 'google/firestore/v1/query_pb'
require 'google/firestore/v1/write_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/firestore/v1/firestore.proto", :syntax => :proto3) do
    add_message "google.firestore.v1.GetDocumentRequest" do
      optional :name, :string, 1
      optional :mask, :message, 2, "google.firestore.v1.DocumentMask"
      oneof :consistency_selector do
        optional :transaction, :bytes, 3
        optional :read_time, :message, 5, "google.protobuf.Timestamp"
      end
    end
    add_message "google.firestore.v1.ListDocumentsRequest" do
      optional :parent, :string, 1
      optional :collection_id, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :order_by, :string, 6
      optional :mask, :message, 7, "google.firestore.v1.DocumentMask"
      optional :show_missing, :bool, 12
      oneof :consistency_selector do
        optional :transaction, :bytes, 8
        optional :read_time, :message, 10, "google.protobuf.Timestamp"
      end
    end
    add_message "google.firestore.v1.ListDocumentsResponse" do
      repeated :documents, :message, 1, "google.firestore.v1.Document"
      optional :next_page_token, :string, 2
    end
    add_message "google.firestore.v1.CreateDocumentRequest" do
      optional :parent, :string, 1
      optional :collection_id, :string, 2
      optional :document_id, :string, 3
      optional :document, :message, 4, "google.firestore.v1.Document"
      optional :mask, :message, 5, "google.firestore.v1.DocumentMask"
    end
    add_message "google.firestore.v1.UpdateDocumentRequest" do
      optional :document, :message, 1, "google.firestore.v1.Document"
      optional :update_mask, :message, 2, "google.firestore.v1.DocumentMask"
      optional :mask, :message, 3, "google.firestore.v1.DocumentMask"
      optional :current_document, :message, 4, "google.firestore.v1.Precondition"
    end
    add_message "google.firestore.v1.DeleteDocumentRequest" do
      optional :name, :string, 1
      optional :current_document, :message, 2, "google.firestore.v1.Precondition"
    end
    add_message "google.firestore.v1.BatchGetDocumentsRequest" do
      optional :database, :string, 1
      repeated :documents, :string, 2
      optional :mask, :message, 3, "google.firestore.v1.DocumentMask"
      oneof :consistency_selector do
        optional :transaction, :bytes, 4
        optional :new_transaction, :message, 5, "google.firestore.v1.TransactionOptions"
        optional :read_time, :message, 7, "google.protobuf.Timestamp"
      end
    end
    add_message "google.firestore.v1.BatchGetDocumentsResponse" do
      optional :transaction, :bytes, 3
      optional :read_time, :message, 4, "google.protobuf.Timestamp"
      oneof :result do
        optional :found, :message, 1, "google.firestore.v1.Document"
        optional :missing, :string, 2
      end
    end
    add_message "google.firestore.v1.BeginTransactionRequest" do
      optional :database, :string, 1
      optional :options, :message, 2, "google.firestore.v1.TransactionOptions"
    end
    add_message "google.firestore.v1.BeginTransactionResponse" do
      optional :transaction, :bytes, 1
    end
    add_message "google.firestore.v1.CommitRequest" do
      optional :database, :string, 1
      repeated :writes, :message, 2, "google.firestore.v1.Write"
      optional :transaction, :bytes, 3
    end
    add_message "google.firestore.v1.CommitResponse" do
      repeated :write_results, :message, 1, "google.firestore.v1.WriteResult"
      optional :commit_time, :message, 2, "google.protobuf.Timestamp"
    end
    add_message "google.firestore.v1.RollbackRequest" do
      optional :database, :string, 1
      optional :transaction, :bytes, 2
    end
    add_message "google.firestore.v1.RunQueryRequest" do
      optional :parent, :string, 1
      oneof :query_type do
        optional :structured_query, :message, 2, "google.firestore.v1.StructuredQuery"
      end
      oneof :consistency_selector do
        optional :transaction, :bytes, 5
        optional :new_transaction, :message, 6, "google.firestore.v1.TransactionOptions"
        optional :read_time, :message, 7, "google.protobuf.Timestamp"
      end
    end
    add_message "google.firestore.v1.RunQueryResponse" do
      optional :transaction, :bytes, 2
      optional :document, :message, 1, "google.firestore.v1.Document"
      optional :read_time, :message, 3, "google.protobuf.Timestamp"
      optional :skipped_results, :int32, 4
      oneof :continuation_selector do
        optional :done, :bool, 6
      end
    end
    add_message "google.firestore.v1.PartitionQueryRequest" do
      optional :parent, :string, 1
      optional :partition_count, :int64, 3
      optional :page_token, :string, 4
      optional :page_size, :int32, 5
      oneof :query_type do
        optional :structured_query, :message, 2, "google.firestore.v1.StructuredQuery"
      end
      oneof :consistency_selector do
        optional :read_time, :message, 6, "google.protobuf.Timestamp"
      end
    end
    add_message "google.firestore.v1.PartitionQueryResponse" do
      repeated :partitions, :message, 1, "google.firestore.v1.Cursor"
      optional :next_page_token, :string, 2
    end
    add_message "google.firestore.v1.WriteRequest" do
      optional :database, :string, 1
      optional :stream_id, :string, 2
      repeated :writes, :message, 3, "google.firestore.v1.Write"
      optional :stream_token, :bytes, 4
      map :labels, :string, :string, 5
    end
    add_message "google.firestore.v1.WriteResponse" do
      optional :stream_id, :string, 1
      optional :stream_token, :bytes, 2
      repeated :write_results, :message, 3, "google.firestore.v1.WriteResult"
      optional :commit_time, :message, 4, "google.protobuf.Timestamp"
    end
    add_message "google.firestore.v1.ListenRequest" do
      optional :database, :string, 1
      map :labels, :string, :string, 4
      oneof :target_change do
        optional :add_target, :message, 2, "google.firestore.v1.Target"
        optional :remove_target, :int32, 3
      end
    end
    add_message "google.firestore.v1.ListenResponse" do
      oneof :response_type do
        optional :target_change, :message, 2, "google.firestore.v1.TargetChange"
        optional :document_change, :message, 3, "google.firestore.v1.DocumentChange"
        optional :document_delete, :message, 4, "google.firestore.v1.DocumentDelete"
        optional :document_remove, :message, 6, "google.firestore.v1.DocumentRemove"
        optional :filter, :message, 5, "google.firestore.v1.ExistenceFilter"
      end
    end
    add_message "google.firestore.v1.Target" do
      optional :target_id, :int32, 5
      optional :once, :bool, 6
      oneof :target_type do
        optional :query, :message, 2, "google.firestore.v1.Target.QueryTarget"
        optional :documents, :message, 3, "google.firestore.v1.Target.DocumentsTarget"
      end
      oneof :resume_type do
        optional :resume_token, :bytes, 4
        optional :read_time, :message, 11, "google.protobuf.Timestamp"
      end
    end
    add_message "google.firestore.v1.Target.DocumentsTarget" do
      repeated :documents, :string, 2
    end
    add_message "google.firestore.v1.Target.QueryTarget" do
      optional :parent, :string, 1
      oneof :query_type do
        optional :structured_query, :message, 2, "google.firestore.v1.StructuredQuery"
      end
    end
    add_message "google.firestore.v1.TargetChange" do
      optional :target_change_type, :enum, 1, "google.firestore.v1.TargetChange.TargetChangeType"
      repeated :target_ids, :int32, 2
      optional :cause, :message, 3, "google.rpc.Status"
      optional :resume_token, :bytes, 4
      optional :read_time, :message, 6, "google.protobuf.Timestamp"
    end
    add_enum "google.firestore.v1.TargetChange.TargetChangeType" do
      value :NO_CHANGE, 0
      value :ADD, 1
      value :REMOVE, 2
      value :CURRENT, 3
      value :RESET, 4
    end
    add_message "google.firestore.v1.ListCollectionIdsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      oneof :consistency_selector do
        optional :read_time, :message, 4, "google.protobuf.Timestamp"
      end
    end
    add_message "google.firestore.v1.ListCollectionIdsResponse" do
      repeated :collection_ids, :string, 1
      optional :next_page_token, :string, 2
    end
    add_message "google.firestore.v1.BatchWriteRequest" do
      optional :database, :string, 1
      repeated :writes, :message, 2, "google.firestore.v1.Write"
      map :labels, :string, :string, 3
    end
    add_message "google.firestore.v1.BatchWriteResponse" do
      repeated :write_results, :message, 1, "google.firestore.v1.WriteResult"
      repeated :status, :message, 2, "google.rpc.Status"
    end
  end
end

module Google
  module Cloud
    module Firestore
      module V1
        GetDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.GetDocumentRequest").msgclass
        ListDocumentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.ListDocumentsRequest").msgclass
        ListDocumentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.ListDocumentsResponse").msgclass
        CreateDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.CreateDocumentRequest").msgclass
        UpdateDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.UpdateDocumentRequest").msgclass
        DeleteDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.DeleteDocumentRequest").msgclass
        BatchGetDocumentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.BatchGetDocumentsRequest").msgclass
        BatchGetDocumentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.BatchGetDocumentsResponse").msgclass
        BeginTransactionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.BeginTransactionRequest").msgclass
        BeginTransactionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.BeginTransactionResponse").msgclass
        CommitRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.CommitRequest").msgclass
        CommitResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.CommitResponse").msgclass
        RollbackRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.RollbackRequest").msgclass
        RunQueryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.RunQueryRequest").msgclass
        RunQueryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.RunQueryResponse").msgclass
        PartitionQueryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.PartitionQueryRequest").msgclass
        PartitionQueryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.PartitionQueryResponse").msgclass
        WriteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.WriteRequest").msgclass
        WriteResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.WriteResponse").msgclass
        ListenRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.ListenRequest").msgclass
        ListenResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.ListenResponse").msgclass
        Target = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.Target").msgclass
        Target::DocumentsTarget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.Target.DocumentsTarget").msgclass
        Target::QueryTarget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.Target.QueryTarget").msgclass
        TargetChange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.TargetChange").msgclass
        TargetChange::TargetChangeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.TargetChange.TargetChangeType").enummodule
        ListCollectionIdsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.ListCollectionIdsRequest").msgclass
        ListCollectionIdsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.ListCollectionIdsResponse").msgclass
        BatchWriteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.BatchWriteRequest").msgclass
        BatchWriteResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.BatchWriteResponse").msgclass
      end
    end
  end
end
