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
    module Billing
      module Budgets
        module V1
          module BudgetService
            # Path helper methods for the BudgetService API.
            module Paths
              ##
              # Create a fully-qualified BillingAccount resource string.
              #
              # The resource will be in the following format:
              #
              # `billingAccounts/{billing_account}`
              #
              # @param billing_account [String]
              #
              # @return [::String]
              def billing_account_path billing_account:
                "billingAccounts/#{billing_account}"
              end

              ##
              # Create a fully-qualified Budget resource string.
              #
              # The resource will be in the following format:
              #
              # `billingAccounts/{billing_account}/budgets/{budget}`
              #
              # @param billing_account [String]
              # @param budget [String]
              #
              # @return [::String]
              def budget_path billing_account:, budget:
                raise ::ArgumentError, "billing_account cannot contain /" if billing_account.to_s.include? "/"

                "billingAccounts/#{billing_account}/budgets/#{budget}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
