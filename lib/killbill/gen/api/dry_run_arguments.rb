#############################################################################################
#                                                                                           #
#                   Copyright 2010-2013 Ning, Inc.                                          #
#                   Copyright 2014 Groupon, Inc.                                            #
#                   Copyright 2014 The Billing Project, LLC                                 #
#                                                                                           #
#      The Billing Project licenses this file to you under the Apache License, version 2.0  #
#      (the "License"); you may not use this file except in compliance with the             #
#      License.  You may obtain a copy of the License at:                                   #
#                                                                                           #
#          http://www.apache.org/licenses/LICENSE-2.0                                       #
#                                                                                           #
#      Unless required by applicable law or agreed to in writing, software                  #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT            #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the            #
#      License for the specific language governing permissions and limitations              #
#      under the License.                                                                   #
#                                                                                           #
#############################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Model

      java_package 'org.killbill.billing.invoice.api'
      class DryRunArguments

        include org.killbill.billing.invoice.api.DryRunArguments

        attr_accessor :dry_run_type, :entitlement_specifier, :action, :subscription_id, :effective_date, :bundle_id, :billing_action_policy

        def initialize()
        end

        def to_java()
          # conversion for dry_run_type [type = org.killbill.billing.invoice.api.DryRunType]
          @dry_run_type = Java::org.killbill.billing.invoice.api.DryRunType.value_of( @dry_run_type.to_s ) unless @dry_run_type.nil?

          # conversion for entitlement_specifier [type = org.killbill.billing.entitlement.api.EntitlementSpecifier]
          @entitlement_specifier = @entitlement_specifier.to_java unless @entitlement_specifier.nil?

          # conversion for action [type = org.killbill.billing.entitlement.api.SubscriptionEventType]
          @action = Java::org.killbill.billing.entitlement.api.SubscriptionEventType.value_of( @action.to_s ) unless @action.nil?

          # conversion for subscription_id [type = java.util.UUID]
          @subscription_id = java.util.UUID.fromString(@subscription_id.to_s) unless @subscription_id.nil?

          # conversion for effective_date [type = org.joda.time.LocalDate]
          if !@effective_date.nil?
            @effective_date = Java::org.joda.time.LocalDate.parse(@effective_date.to_s)
          end

          # conversion for bundle_id [type = java.util.UUID]
          @bundle_id = java.util.UUID.fromString(@bundle_id.to_s) unless @bundle_id.nil?

          # conversion for billing_action_policy [type = org.killbill.billing.catalog.api.BillingActionPolicy]
          @billing_action_policy = Java::org.killbill.billing.catalog.api.BillingActionPolicy.value_of( @billing_action_policy.to_s ) unless @billing_action_policy.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for dry_run_type [type = org.killbill.billing.invoice.api.DryRunType]
          @dry_run_type = j_obj.dry_run_type
          @dry_run_type = @dry_run_type.to_s.to_sym unless @dry_run_type.nil?

          # conversion for entitlement_specifier [type = org.killbill.billing.entitlement.api.EntitlementSpecifier]
          @entitlement_specifier = j_obj.entitlement_specifier
          @entitlement_specifier = Killbill::Plugin::Model::EntitlementSpecifier.new.to_ruby(@entitlement_specifier) unless @entitlement_specifier.nil?

          # conversion for action [type = org.killbill.billing.entitlement.api.SubscriptionEventType]
          @action = j_obj.action
          @action = @action.to_s.to_sym unless @action.nil?

          # conversion for subscription_id [type = java.util.UUID]
          @subscription_id = j_obj.subscription_id
          @subscription_id = @subscription_id.nil? ? nil : @subscription_id.to_s

          # conversion for effective_date [type = org.joda.time.LocalDate]
          @effective_date = j_obj.effective_date
          if !@effective_date.nil?
            @effective_date = @effective_date.to_s
          end

          # conversion for bundle_id [type = java.util.UUID]
          @bundle_id = j_obj.bundle_id
          @bundle_id = @bundle_id.nil? ? nil : @bundle_id.to_s

          # conversion for billing_action_policy [type = org.killbill.billing.catalog.api.BillingActionPolicy]
          @billing_action_policy = j_obj.billing_action_policy
          @billing_action_policy = @billing_action_policy.to_s.to_sym unless @billing_action_policy.nil?
          self
        end

      end
    end
  end
end
