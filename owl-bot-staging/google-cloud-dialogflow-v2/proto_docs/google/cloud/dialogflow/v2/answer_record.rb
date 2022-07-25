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
    module Dialogflow
      module V2
        # Answer records are records to manage answer history and feedbacks for
        # Dialogflow.
        #
        # Currently, answer record includes:
        #
        # - human agent assistant article suggestion
        # - human agent assistant faq article
        #
        # It doesn't include:
        #
        # - `DetectIntent` intent matching
        # - `DetectIntent` knowledge
        #
        # Answer records are not related to the conversation history in the
        # Dialogflow Console. A Record is generated even when the end-user disables
        # conversation history in the console. Records are created when there's a human
        # agent assistant suggestion generated.
        #
        # A typical workflow for customers provide feedback to an answer is:
        #
        # 1. For human agent assistant, customers get suggestion via ListSuggestions
        #    API. Together with the answers, {::Google::Cloud::Dialogflow::V2::AnswerRecord#name AnswerRecord.name} are returned to the
        #    customers.
        # 2. The customer uses the {::Google::Cloud::Dialogflow::V2::AnswerRecord#name AnswerRecord.name} to call the
        #    [UpdateAnswerRecord][] method to send feedback about a specific answer
        #    that they believe is wrong.
        # @!attribute [rw] name
        #   @return [::String]
        #     The unique identifier of this answer record.
        #     Format: `projects/<Project ID>/locations/<Location
        #     ID>/answerRecords/<Answer Record ID>`.
        # @!attribute [rw] answer_feedback
        #   @return [::Google::Cloud::Dialogflow::V2::AnswerFeedback]
        #     Required. The AnswerFeedback for this record. You can set this with
        #     {::Google::Cloud::Dialogflow::V2::AnswerRecords::Client#update_answer_record AnswerRecords.UpdateAnswerRecord} in order to give us feedback about
        #     this answer.
        # @!attribute [r] agent_assistant_record
        #   @return [::Google::Cloud::Dialogflow::V2::AgentAssistantRecord]
        #     Output only. The record for human agent assistant.
        class AnswerRecord
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Dialogflow::V2::AnswerRecords::Client#list_answer_records AnswerRecords.ListAnswerRecords}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project to list all answer records for in reverse
        #     chronological order. Format: `projects/<Project ID>/locations/<Location
        #     ID>`.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filters to restrict results to specific answer records.
        #
        #     Marked deprecated as it hasn't been, and isn't currently, supported.
        #
        #     For more information about filtering, see
        #     [API Filtering](https://aip.dev/160).
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of records to return in a single page.
        #     The server may return fewer records than this. If unspecified, we use 10.
        #     The maximum is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The
        #     {::Google::Cloud::Dialogflow::V2::ListAnswerRecordsResponse#next_page_token ListAnswerRecordsResponse.next_page_token}
        #     value returned from a previous list request used to continue listing on
        #     the next page.
        class ListAnswerRecordsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::Dialogflow::V2::AnswerRecords::Client#list_answer_records AnswerRecords.ListAnswerRecords}.
        # @!attribute [rw] answer_records
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::AnswerRecord>]
        #     The list of answer records.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results. Or empty if there are no more
        #     results.
        #     Pass this value in the
        #     {::Google::Cloud::Dialogflow::V2::ListAnswerRecordsRequest#page_token ListAnswerRecordsRequest.page_token}
        #     field in the subsequent call to `ListAnswerRecords` method to retrieve the
        #     next page of results.
        class ListAnswerRecordsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Dialogflow::V2::AnswerRecords::Client#update_answer_record AnswerRecords.UpdateAnswerRecord}.
        # @!attribute [rw] answer_record
        #   @return [::Google::Cloud::Dialogflow::V2::AnswerRecord]
        #     Required. Answer record to update.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The mask to control which fields get updated.
        class UpdateAnswerRecordRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents feedback the customer has about the quality & correctness of a
        # certain answer in a conversation.
        # @!attribute [rw] correctness_level
        #   @return [::Google::Cloud::Dialogflow::V2::AnswerFeedback::CorrectnessLevel]
        #     The correctness level of the specific answer.
        # @!attribute [rw] agent_assistant_detail_feedback
        #   @return [::Google::Cloud::Dialogflow::V2::AgentAssistantFeedback]
        #     Detail feedback of agent assist suggestions.
        # @!attribute [rw] clicked
        #   @return [::Boolean]
        #     Indicates whether the answer/item was clicked by the human agent
        #     or not. Default to false.
        # @!attribute [rw] click_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time when the answer/item was clicked.
        # @!attribute [rw] displayed
        #   @return [::Boolean]
        #     Indicates whether the answer/item was displayed to the human
        #     agent in the agent desktop UI. Default to false.
        # @!attribute [rw] display_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time when the answer/item was displayed.
        class AnswerFeedback
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The correctness level of an answer.
          module CorrectnessLevel
            # Correctness level unspecified.
            CORRECTNESS_LEVEL_UNSPECIFIED = 0

            # Answer is totally wrong.
            NOT_CORRECT = 1

            # Answer is partially correct.
            PARTIALLY_CORRECT = 2

            # Answer is fully correct.
            FULLY_CORRECT = 3
          end
        end

        # Detail feedback of Agent Assist result.
        # @!attribute [rw] answer_relevance
        #   @return [::Google::Cloud::Dialogflow::V2::AgentAssistantFeedback::AnswerRelevance]
        #     Optional. Whether or not the suggested answer is relevant.
        #
        #     For example:
        #
        #     * Query: "Can I change my mailing address?"
        #     * Suggested document says: "Items must be returned/exchanged within 60
        #       days of the purchase date."
        #     * {::Google::Cloud::Dialogflow::V2::AgentAssistantFeedback#answer_relevance answer_relevance}: {::Google::Cloud::Dialogflow::V2::AgentAssistantFeedback::AnswerRelevance::IRRELEVANT AnswerRelevance.IRRELEVANT}
        # @!attribute [rw] document_correctness
        #   @return [::Google::Cloud::Dialogflow::V2::AgentAssistantFeedback::DocumentCorrectness]
        #     Optional. Whether or not the information in the document is correct.
        #
        #     For example:
        #
        #     * Query: "Can I return the package in 2 days once received?"
        #     * Suggested document says: "Items must be returned/exchanged within 60
        #       days of the purchase date."
        #     * Ground truth: "No return or exchange is allowed."
        #     * [document_correctness]: INCORRECT
        # @!attribute [rw] document_efficiency
        #   @return [::Google::Cloud::Dialogflow::V2::AgentAssistantFeedback::DocumentEfficiency]
        #     Optional. Whether or not the suggested document is efficient. For example,
        #     if the document is poorly written, hard to understand, hard to use or
        #     too long to find useful information, {::Google::Cloud::Dialogflow::V2::AgentAssistantFeedback#document_efficiency document_efficiency} is
        #     {::Google::Cloud::Dialogflow::V2::AgentAssistantFeedback::DocumentEfficiency::INEFFICIENT DocumentEfficiency.INEFFICIENT}.
        class AgentAssistantFeedback
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Relevance of an answer.
          module AnswerRelevance
            # Answer relevance unspecified.
            ANSWER_RELEVANCE_UNSPECIFIED = 0

            # Answer is irrelevant to query.
            IRRELEVANT = 1

            # Answer is relevant to query.
            RELEVANT = 2
          end

          # Correctness of document.
          module DocumentCorrectness
            # Document correctness unspecified.
            DOCUMENT_CORRECTNESS_UNSPECIFIED = 0

            # Information in document is incorrect.
            INCORRECT = 1

            # Information in document is correct.
            CORRECT = 2
          end

          # Efficiency of document.
          module DocumentEfficiency
            # Document efficiency unspecified.
            DOCUMENT_EFFICIENCY_UNSPECIFIED = 0

            # Document is inefficient.
            INEFFICIENT = 1

            # Document is efficient.
            EFFICIENT = 2
          end
        end

        # Represents a record of a human agent assist answer.
        # @!attribute [r] article_suggestion_answer
        #   @return [::Google::Cloud::Dialogflow::V2::ArticleAnswer]
        #     Output only. The article suggestion answer.
        # @!attribute [r] faq_answer
        #   @return [::Google::Cloud::Dialogflow::V2::FaqAnswer]
        #     Output only. The FAQ answer.
        class AgentAssistantRecord
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
