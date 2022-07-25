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

# [START dialogflow_v3_generated_Pages_CreatePage_sync]
require "google/cloud/dialogflow/cx/v3"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::Dialogflow::CX::V3::Pages::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::Dialogflow::CX::V3::CreatePageRequest.new

# Call the create_page method.
result = client.create_page request

# The returned object is of type Google::Cloud::Dialogflow::CX::V3::Page.
p result
# [END dialogflow_v3_generated_Pages_CreatePage_sync]
