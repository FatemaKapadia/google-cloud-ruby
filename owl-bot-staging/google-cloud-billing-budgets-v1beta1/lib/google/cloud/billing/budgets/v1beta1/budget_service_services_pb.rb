# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/billing/budgets/v1beta1/budget_service.proto for package 'google.cloud.billing.budgets.v1beta1'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/billing/budgets/v1beta1/budget_service_pb'

module Google
  module Cloud
    module Billing
      module Budgets
        module V1beta1
          module BudgetService
            # BudgetService stores Cloud Billing budgets, which define a
            # budget plan and rules to execute as we track spend against that plan.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.billing.budgets.v1beta1.BudgetService'

              # Creates a new budget. See
              # [Quotas and limits](https://cloud.google.com/billing/quotas)
              # for more information on the limits of the number of budgets you can create.
              rpc :CreateBudget, ::Google::Cloud::Billing::Budgets::V1beta1::CreateBudgetRequest, ::Google::Cloud::Billing::Budgets::V1beta1::Budget
              # Updates a budget and returns the updated budget.
              #
              # WARNING: There are some fields exposed on the Google Cloud Console that
              # aren't available on this API. Budget fields that are not exposed in
              # this API will not be changed by this method.
              rpc :UpdateBudget, ::Google::Cloud::Billing::Budgets::V1beta1::UpdateBudgetRequest, ::Google::Cloud::Billing::Budgets::V1beta1::Budget
              # Returns a budget.
              #
              # WARNING: There are some fields exposed on the Google Cloud Console that
              # aren't available on this API. When reading from the API, you will not
              # see these fields in the return value, though they may have been set
              # in the Cloud Console.
              rpc :GetBudget, ::Google::Cloud::Billing::Budgets::V1beta1::GetBudgetRequest, ::Google::Cloud::Billing::Budgets::V1beta1::Budget
              # Returns a list of budgets for a billing account.
              #
              # WARNING: There are some fields exposed on the Google Cloud Console that
              # aren't available on this API. When reading from the API, you will not
              # see these fields in the return value, though they may have been set
              # in the Cloud Console.
              rpc :ListBudgets, ::Google::Cloud::Billing::Budgets::V1beta1::ListBudgetsRequest, ::Google::Cloud::Billing::Budgets::V1beta1::ListBudgetsResponse
              # Deletes a budget. Returns successfully if already deleted.
              rpc :DeleteBudget, ::Google::Cloud::Billing::Budgets::V1beta1::DeleteBudgetRequest, ::Google::Protobuf::Empty
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
