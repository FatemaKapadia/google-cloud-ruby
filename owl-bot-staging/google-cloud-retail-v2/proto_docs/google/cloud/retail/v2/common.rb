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
    module Retail
      module V2
        # An intended audience of the {::Google::Cloud::Retail::V2::Product Product} for
        # whom it's sold.
        # @!attribute [rw] genders
        #   @return [::Array<::String>]
        #     The genders of the audience. Strongly encouraged to use the standard
        #     values: "male", "female", "unisex".
        #
        #     At most 5 values are allowed. Each value must be a UTF-8 encoded string
        #     with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error
        #     is returned.
        #
        #     Google Merchant Center property
        #     [gender](https://support.google.com/merchants/answer/6324479). Schema.org
        #     property
        #     [Product.audience.suggestedGender](https://schema.org/suggestedGender).
        # @!attribute [rw] age_groups
        #   @return [::Array<::String>]
        #     The age groups of the audience. Strongly encouraged to use the standard
        #     values: "newborn" (up to 3 months old), "infant" (3–12 months old),
        #     "toddler" (1–5 years old), "kids" (5–13 years old), "adult" (typically
        #     teens or older).
        #
        #     At most 5 values are allowed. Each value must be a UTF-8 encoded string
        #     with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error
        #     is returned.
        #
        #     Google Merchant Center property
        #     [age_group](https://support.google.com/merchants/answer/6324463).
        #     Schema.org property
        #     [Product.audience.suggestedMinAge](https://schema.org/suggestedMinAge) and
        #     [Product.audience.suggestedMaxAge](https://schema.org/suggestedMaxAge).
        class Audience
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The color information of a {::Google::Cloud::Retail::V2::Product Product}.
        # @!attribute [rw] color_families
        #   @return [::Array<::String>]
        #     The standard color families. Strongly recommended to use the following
        #     standard color groups: "Red", "Pink", "Orange", "Yellow", "Purple",
        #     "Green", "Cyan", "Blue", "Brown", "White", "Gray", "Black" and
        #     "Mixed". Normally it is expected to have only 1 color family. May consider
        #     using single "Mixed" instead of multiple values.
        #
        #     A maximum of 5 values are allowed. Each value must be a UTF-8 encoded
        #     string with a length limit of 128 characters. Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     Google Merchant Center property
        #     [color](https://support.google.com/merchants/answer/6324487). Schema.org
        #     property [Product.color](https://schema.org/color).
        # @!attribute [rw] colors
        #   @return [::Array<::String>]
        #     The color display names, which may be different from standard color family
        #     names, such as the color aliases used in the website frontend. Normally
        #     it is expected to have only 1 color. May consider using single "Mixed"
        #     instead of multiple values.
        #
        #     A maximum of 25 colors are allowed. Each value must be a UTF-8 encoded
        #     string with a length limit of 128 characters. Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     Google Merchant Center property
        #     [color](https://support.google.com/merchants/answer/6324487). Schema.org
        #     property [Product.color](https://schema.org/color).
        class ColorInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A custom attribute that is not explicitly modeled in
        # {::Google::Cloud::Retail::V2::Product Product}.
        # @!attribute [rw] text
        #   @return [::Array<::String>]
        #     The textual values of this custom attribute. For example, `["yellow",
        #     "green"]` when the key is "color".
        #
        #     Empty string is not allowed. Otherwise, an INVALID_ARGUMENT error is
        #     returned.
        #
        #     Exactly one of {::Google::Cloud::Retail::V2::CustomAttribute#text text} or
        #     {::Google::Cloud::Retail::V2::CustomAttribute#numbers numbers} should be set.
        #     Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] numbers
        #   @return [::Array<::Float>]
        #     The numerical values of this custom attribute. For example, `[2.3, 15.4]`
        #     when the key is "lengths_cm".
        #
        #     Exactly one of {::Google::Cloud::Retail::V2::CustomAttribute#text text} or
        #     {::Google::Cloud::Retail::V2::CustomAttribute#numbers numbers} should be set.
        #     Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] searchable
        #   @return [::Boolean]
        #     This field is normally ignored unless
        #     [AttributesConfig.attribute_config_level][] of the
        #     {::Google::Cloud::Retail::V2::Catalog Catalog} is set to the deprecated
        #     'PRODUCT_LEVEL_ATTRIBUTE_CONFIG' mode. For information about product-level
        #     attribute configuration, see [Configuration
        #     modes](https://cloud.google.com/retail/docs/attribute-config#config-modes).
        #     If true, custom attribute values are searchable by text queries in
        #     {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search}.
        #
        #     This field is ignored in a {::Google::Cloud::Retail::V2::UserEvent UserEvent}.
        #
        #     Only set if type {::Google::Cloud::Retail::V2::CustomAttribute#text text} is
        #     set. Otherwise, a INVALID_ARGUMENT error is returned.
        # @!attribute [rw] indexable
        #   @return [::Boolean]
        #     This field is normally ignored unless
        #     [AttributesConfig.attribute_config_level][] of the
        #     {::Google::Cloud::Retail::V2::Catalog Catalog} is set to the deprecated
        #     'PRODUCT_LEVEL_ATTRIBUTE_CONFIG' mode. For information about product-level
        #     attribute configuration, see [Configuration
        #     modes](https://cloud.google.com/retail/docs/attribute-config#config-modes).
        #     If true, custom attribute values are indexed, so that they can be filtered,
        #     faceted or boosted in
        #     {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search}.
        #
        #     This field is ignored in a {::Google::Cloud::Retail::V2::UserEvent UserEvent}.
        #
        #     See {::Google::Cloud::Retail::V2::SearchRequest#filter SearchRequest.filter},
        #     {::Google::Cloud::Retail::V2::SearchRequest#facet_specs SearchRequest.facet_specs}
        #     and
        #     {::Google::Cloud::Retail::V2::SearchRequest#boost_spec SearchRequest.boost_spec}
        #     for more details.
        class CustomAttribute
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Fulfillment information, such as the store IDs for in-store pickup or region
        # IDs for different shipping methods.
        # @!attribute [rw] type
        #   @return [::String]
        #     The fulfillment type, including commonly used types (such as pickup in
        #     store and same day delivery), and custom types. Customers have to map
        #     custom types to their display names before rendering UI.
        #
        #     Supported values:
        #
        #     * "pickup-in-store"
        #     * "ship-to-store"
        #     * "same-day-delivery"
        #     * "next-day-delivery"
        #     * "custom-type-1"
        #     * "custom-type-2"
        #     * "custom-type-3"
        #     * "custom-type-4"
        #     * "custom-type-5"
        #
        #     If this field is set to an invalid value other than these, an
        #     INVALID_ARGUMENT error is returned.
        # @!attribute [rw] place_ids
        #   @return [::Array<::String>]
        #     The IDs for this {::Google::Cloud::Retail::V2::FulfillmentInfo#type type}, such
        #     as the store IDs for
        #     {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type.pickup-in-store}
        #     or the region IDs for
        #     {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type.same-day-delivery}.
        #
        #     A maximum of 3000 values are allowed. Each value must be a string with a
        #     length limit of 30 characters, matching the pattern `[a-zA-Z0-9_-]+`, such
        #     as "store1" or "REGION-2". Otherwise, an INVALID_ARGUMENT error is
        #     returned.
        class FulfillmentInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # {::Google::Cloud::Retail::V2::Product Product} image. Recommendations AI and
        # Retail Search do not use product images to improve prediction and search
        # results. However, product images can be returned in results, and are shown in
        # prediction or search previews in the console.
        # @!attribute [rw] uri
        #   @return [::String]
        #     Required. URI of the image.
        #
        #     This field must be a valid UTF-8 encoded URI with a length limit of 5,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     Google Merchant Center property
        #     [image_link](https://support.google.com/merchants/answer/6324350).
        #     Schema.org property [Product.image](https://schema.org/image).
        # @!attribute [rw] height
        #   @return [::Integer]
        #     Height of the image in number of pixels.
        #
        #     This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is
        #     returned.
        # @!attribute [rw] width
        #   @return [::Integer]
        #     Width of the image in number of pixels.
        #
        #     This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is
        #     returned.
        class Image
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A floating point interval.
        # @!attribute [rw] minimum
        #   @return [::Float]
        #     Inclusive lower bound.
        # @!attribute [rw] exclusive_minimum
        #   @return [::Float]
        #     Exclusive lower bound.
        # @!attribute [rw] maximum
        #   @return [::Float]
        #     Inclusive upper bound.
        # @!attribute [rw] exclusive_maximum
        #   @return [::Float]
        #     Exclusive upper bound.
        class Interval
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The price information of a {::Google::Cloud::Retail::V2::Product Product}.
        # @!attribute [rw] currency_code
        #   @return [::String]
        #     The 3-letter currency code defined in [ISO
        #     4217](https://www.iso.org/iso-4217-currency-codes.html).
        #
        #     If this field is an unrecognizable currency code, an INVALID_ARGUMENT
        #     error is returned.
        #
        #     The {::Google::Cloud::Retail::V2::Product::Type::VARIANT Product.Type.VARIANT}
        #     {::Google::Cloud::Retail::V2::Product Product}s with the same
        #     {::Google::Cloud::Retail::V2::Product#primary_product_id Product.primary_product_id}
        #     must share the same
        #     {::Google::Cloud::Retail::V2::PriceInfo#currency_code currency_code}. Otherwise,
        #     a FAILED_PRECONDITION error is returned.
        # @!attribute [rw] price
        #   @return [::Float]
        #     Price of the product.
        #
        #     Google Merchant Center property
        #     [price](https://support.google.com/merchants/answer/6324371). Schema.org
        #     property [Offer.price](https://schema.org/price).
        # @!attribute [rw] original_price
        #   @return [::Float]
        #     Price of the product without any discount. If zero, by default set to be
        #     the {::Google::Cloud::Retail::V2::PriceInfo#price price}. If set,
        #     {::Google::Cloud::Retail::V2::PriceInfo#original_price original_price} should be
        #     greater than or equal to {::Google::Cloud::Retail::V2::PriceInfo#price price},
        #     otherwise an INVALID_ARGUMENT error is thrown.
        # @!attribute [rw] cost
        #   @return [::Float]
        #     The costs associated with the sale of a particular product. Used for gross
        #     profit reporting.
        #
        #     * Profit = {::Google::Cloud::Retail::V2::PriceInfo#price price} -
        #     {::Google::Cloud::Retail::V2::PriceInfo#cost cost}
        #
        #     Google Merchant Center property
        #     [cost_of_goods_sold](https://support.google.com/merchants/answer/9017895).
        # @!attribute [rw] price_effective_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The timestamp when the {::Google::Cloud::Retail::V2::PriceInfo#price price}
        #     starts to be effective. This can be set as a future timestamp, and the
        #     {::Google::Cloud::Retail::V2::PriceInfo#price price} is only used for search
        #     after
        #     {::Google::Cloud::Retail::V2::PriceInfo#price_effective_time price_effective_time}.
        #     If so, the
        #     {::Google::Cloud::Retail::V2::PriceInfo#original_price original_price} must be
        #     set and {::Google::Cloud::Retail::V2::PriceInfo#original_price original_price}
        #     is used before
        #     {::Google::Cloud::Retail::V2::PriceInfo#price_effective_time price_effective_time}.
        #
        #     Do not set if {::Google::Cloud::Retail::V2::PriceInfo#price price} is always
        #     effective because it will cause additional latency during search.
        # @!attribute [rw] price_expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The timestamp when the {::Google::Cloud::Retail::V2::PriceInfo#price price}
        #     stops to be effective. The {::Google::Cloud::Retail::V2::PriceInfo#price price}
        #     is used for search before
        #     {::Google::Cloud::Retail::V2::PriceInfo#price_expire_time price_expire_time}. If
        #     this field is set, the
        #     {::Google::Cloud::Retail::V2::PriceInfo#original_price original_price} must be
        #     set and {::Google::Cloud::Retail::V2::PriceInfo#original_price original_price}
        #     is used after
        #     {::Google::Cloud::Retail::V2::PriceInfo#price_expire_time price_expire_time}.
        #
        #     Do not set if {::Google::Cloud::Retail::V2::PriceInfo#price price} is always
        #     effective because it will cause additional latency during search.
        # @!attribute [r] price_range
        #   @return [::Google::Cloud::Retail::V2::PriceInfo::PriceRange]
        #     Output only. The price range of all the child
        #     {::Google::Cloud::Retail::V2::Product::Type::VARIANT Product.Type.VARIANT}
        #     {::Google::Cloud::Retail::V2::Product Product}s grouped together on the
        #     {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Product.Type.PRIMARY}
        #     {::Google::Cloud::Retail::V2::Product Product}. Only populated for
        #     {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Product.Type.PRIMARY}
        #     {::Google::Cloud::Retail::V2::Product Product}s.
        #
        #     Note: This field is OUTPUT_ONLY for
        #     {::Google::Cloud::Retail::V2::ProductService::Client#get_product ProductService.GetProduct}.
        #     Do not set this field in API requests.
        class PriceInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The price range of all
          # {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
          # {::Google::Cloud::Retail::V2::Product Product} having the same
          # {::Google::Cloud::Retail::V2::Product#primary_product_id Product.primary_product_id}.
          # @!attribute [rw] price
          #   @return [::Google::Cloud::Retail::V2::Interval]
          #     The inclusive
          #     {::Google::Cloud::Retail::V2::PriceInfo#price Product.pricing_info.price}
          #     interval of all {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
          #     {::Google::Cloud::Retail::V2::Product Product} having the same
          #     {::Google::Cloud::Retail::V2::Product#primary_product_id Product.primary_product_id}.
          # @!attribute [rw] original_price
          #   @return [::Google::Cloud::Retail::V2::Interval]
          #     The inclusive
          #     {::Google::Cloud::Retail::V2::PriceInfo#original_price Product.pricing_info.original_price}
          #     internal of all {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
          #     {::Google::Cloud::Retail::V2::Product Product} having the same
          #     {::Google::Cloud::Retail::V2::Product#primary_product_id Product.primary_product_id}.
          class PriceRange
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The rating of a {::Google::Cloud::Retail::V2::Product Product}.
        # @!attribute [rw] rating_count
        #   @return [::Integer]
        #     The total number of ratings. This value is independent of the value of
        #     {::Google::Cloud::Retail::V2::Rating#rating_histogram rating_histogram}.
        #
        #     This value must be nonnegative. Otherwise, an INVALID_ARGUMENT error is
        #     returned.
        # @!attribute [rw] average_rating
        #   @return [::Float]
        #     The average rating of the {::Google::Cloud::Retail::V2::Product Product}.
        #
        #     The rating is scaled at 1-5. Otherwise, an INVALID_ARGUMENT error is
        #     returned.
        # @!attribute [rw] rating_histogram
        #   @return [::Array<::Integer>]
        #     List of rating counts per rating value (index = rating - 1). The list is
        #     empty if there is no rating. If the list is non-empty, its size is
        #     always 5. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     For example, [41, 14, 13, 47, 303]. It means that the
        #     {::Google::Cloud::Retail::V2::Product Product} got 41 ratings with 1 star, 14
        #     ratings with 2 star, and so on.
        class Rating
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Information of an end user.
        # @!attribute [rw] user_id
        #   @return [::String]
        #     Highly recommended for logged-in users. Unique identifier for logged-in
        #     user, such as a user name. Don't set for anonymous users.
        #
        #     Always use a hashed value for this ID.
        #
        #     Don't set the field to the same fixed ID for different users. This mixes
        #     the event history of those users together, which results in degraded
        #     model quality.
        #
        #     The field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] ip_address
        #   @return [::String]
        #     The end user's IP address. This field is used to extract location
        #     information for personalization.
        #
        #     This field must be either an IPv4 address (e.g. "104.133.9.80") or an IPv6
        #     address (e.g. "2001:0db8:85a3:0000:0000:8a2e:0370:7334"). Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     This should not be set when:
        #
        #     * setting
        #     {::Google::Cloud::Retail::V2::SearchRequest#user_info SearchRequest.user_info}.
        #     * using the JavaScript tag in
        #     {::Google::Cloud::Retail::V2::UserEventService::Client#collect_user_event UserEventService.CollectUserEvent}
        #     or if
        #     {::Google::Cloud::Retail::V2::UserInfo#direct_user_request direct_user_request}
        #     is set.
        # @!attribute [rw] user_agent
        #   @return [::String]
        #     User agent as included in the HTTP header. Required for getting
        #     [SearchResponse.sponsored_results][google.cloud.retail.v2.SearchResponse.sponsored_results].
        #
        #     The field must be a UTF-8 encoded string with a length limit of 1,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     This should not be set when using the client side event reporting with
        #     GTM or JavaScript tag in
        #     {::Google::Cloud::Retail::V2::UserEventService::Client#collect_user_event UserEventService.CollectUserEvent}
        #     or if
        #     {::Google::Cloud::Retail::V2::UserInfo#direct_user_request direct_user_request}
        #     is set.
        # @!attribute [rw] direct_user_request
        #   @return [::Boolean]
        #     True if the request is made directly from the end user, in which case the
        #     {::Google::Cloud::Retail::V2::UserInfo#ip_address ip_address} and
        #     {::Google::Cloud::Retail::V2::UserInfo#user_agent user_agent} can be populated
        #     from the HTTP request. This flag should be set only if the API request is
        #     made directly from the end user such as a mobile app (and not if a gateway
        #     or a server is processing and pushing the user events).
        #
        #     This should not be set when using the JavaScript tag in
        #     {::Google::Cloud::Retail::V2::UserEventService::Client#collect_user_event UserEventService.CollectUserEvent}.
        class UserInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The inventory information at a place (e.g. a store) identified
        # by a place ID.
        # @!attribute [rw] place_id
        #   @return [::String]
        #     The place ID for the current set of inventory information.
        # @!attribute [rw] price_info
        #   @return [::Google::Cloud::Retail::V2::PriceInfo]
        #     Product price and cost information.
        #
        #     Google Merchant Center property
        #     [price](https://support.google.com/merchants/answer/6324371).
        # @!attribute [rw] attributes
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::Retail::V2::CustomAttribute}]
        #     Additional local inventory attributes, for example, store name, promotion
        #     tags, etc.
        #
        #     This field needs to pass all below criteria, otherwise an INVALID_ARGUMENT
        #     error is returned:
        #
        #     * At most 30 attributes are allowed.
        #     * The key must be a UTF-8 encoded string with a length limit of 32
        #       characters.
        #     * The key must match the pattern: `[a-zA-Z0-9][a-zA-Z0-9_]*`. For example,
        #       key0LikeThis or KEY_1_LIKE_THIS.
        #     * The attribute values must be of the same type (text or number).
        #     * Only 1 value is allowed for each attribute.
        #     * For text values, the length limit is 256 UTF-8 characters.
        #     * The attribute does not support search. The `searchable` field should be
        #       unset or set to false.
        #     * The max summed total bytes of custom attribute keys and values per
        #       product is 5MiB.
        # @!attribute [rw] fulfillment_types
        #   @return [::Array<::String>]
        #     Input only. Supported fulfillment types. Valid fulfillment type values
        #     include commonly used types (such as pickup in store and same day
        #     delivery), and custom types. Customers have to map custom types to their
        #     display names before rendering UI.
        #
        #     Supported values:
        #
        #     * "pickup-in-store"
        #     * "ship-to-store"
        #     * "same-day-delivery"
        #     * "next-day-delivery"
        #     * "custom-type-1"
        #     * "custom-type-2"
        #     * "custom-type-3"
        #     * "custom-type-4"
        #     * "custom-type-5"
        #
        #     If this field is set to an invalid value other than these, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     All the elements must be distinct. Otherwise, an INVALID_ARGUMENT error is
        #     returned.
        class LocalInventory
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::Retail::V2::CustomAttribute]
          class AttributesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
