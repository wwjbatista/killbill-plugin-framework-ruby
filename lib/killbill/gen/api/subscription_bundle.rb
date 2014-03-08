###################################################################################
#                                                                                 #
#                   Copyright 2010-2013 Ning, Inc.                                #
#                                                                                 #
#      Ning licenses this file to you under the Apache License, version 2.0       #
#      (the "License"); you may not use this file except in compliance with the   #
#      License.  You may obtain a copy of the License at:                         #
#                                                                                 #
#          http://www.apache.org/licenses/LICENSE-2.0                             #
#                                                                                 #
#      Unless required by applicable law or agreed to in writing, software        #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT  #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the  #
#      License for the specific language governing permissions and limitations    #
#      under the License.                                                         #
#                                                                                 #
###################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Model

      java_package 'org.killbill.billing.entitlement.api'
      class SubscriptionBundle

        include org.killbill.billing.entitlement.api.SubscriptionBundle

        attr_accessor :id, :created_date, :updated_date, :account_id, :external_key, :original_created_date, :subscriptions, :timeline

        def initialize()
        end

        def to_java()
          # conversion for id [type = java.util.UUID]
          @id = java.util.UUID.fromString(@id.to_s) unless @id.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          if !@created_date.nil?
            @created_date =  (@created_date.kind_of? Time) ? DateTime.parse(@created_date.to_s) : @created_date
            @created_date = Java::org.joda.time.DateTime.new(@created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          if !@updated_date.nil?
            @updated_date =  (@updated_date.kind_of? Time) ? DateTime.parse(@updated_date.to_s) : @updated_date
            @updated_date = Java::org.joda.time.DateTime.new(@updated_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for account_id [type = java.util.UUID]
          @account_id = java.util.UUID.fromString(@account_id.to_s) unless @account_id.nil?

          # conversion for external_key [type = java.lang.String]
          @external_key = @external_key.to_s unless @external_key.nil?

          # conversion for original_created_date [type = org.joda.time.DateTime]
          if !@original_created_date.nil?
            @original_created_date =  (@original_created_date.kind_of? Time) ? DateTime.parse(@original_created_date.to_s) : @original_created_date
            @original_created_date = Java::org.joda.time.DateTime.new(@original_created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for subscriptions [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@subscriptions || []).each do |m|
            # conversion for m [type = org.killbill.billing.entitlement.api.Subscription]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @subscriptions = tmp

          # conversion for timeline [type = org.killbill.billing.entitlement.api.SubscriptionBundleTimeline]
          @timeline = @timeline.to_java unless @timeline.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for id [type = java.util.UUID]
          @id = j_obj.id
          @id = @id.nil? ? nil : @id.to_s

          # conversion for created_date [type = org.joda.time.DateTime]
          @created_date = j_obj.created_date
          if !@created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@created_date)
            @created_date = DateTime.iso8601(str)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          @updated_date = j_obj.updated_date
          if !@updated_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@updated_date)
            @updated_date = DateTime.iso8601(str)
          end

          # conversion for account_id [type = java.util.UUID]
          @account_id = j_obj.account_id
          @account_id = @account_id.nil? ? nil : @account_id.to_s

          # conversion for external_key [type = java.lang.String]
          @external_key = j_obj.external_key

          # conversion for original_created_date [type = org.joda.time.DateTime]
          @original_created_date = j_obj.original_created_date
          if !@original_created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@original_created_date)
            @original_created_date = DateTime.iso8601(str)
          end

          # conversion for subscriptions [type = java.util.List]
          @subscriptions = j_obj.subscriptions
          tmp = []
          (@subscriptions || []).each do |m|
            # conversion for m [type = org.killbill.billing.entitlement.api.Subscription]
            m = Killbill::Plugin::Model::Subscription.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @subscriptions = tmp

          # conversion for timeline [type = org.killbill.billing.entitlement.api.SubscriptionBundleTimeline]
          @timeline = j_obj.timeline
          @timeline = Killbill::Plugin::Model::SubscriptionBundleTimeline.new.to_ruby(@timeline) unless @timeline.nil?
          self
        end

      end
    end
  end
end
