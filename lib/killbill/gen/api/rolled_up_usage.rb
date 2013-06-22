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

      java_package 'com.ning.billing.usage.api'
      class RolledUpUsage

        include com.ning.billing.usage.api.RolledUpUsage

        attr_accessor :subscription_id, :unit_type, :start_time, :end_time, :amount

        def initialize()
        end

        def to_java()
          # conversion for subscription_id [type = java.util.UUID]
          @subscription_id = java.util.UUID.fromString(@subscription_id.to_s) unless @subscription_id.nil?

          # conversion for unit_type [type = java.lang.String]
          @unit_type = @unit_type.to_s unless @unit_type.nil?

          # conversion for start_time [type = org.joda.time.DateTime]
          if !@start_time.nil?
            @start_time =  (@start_time.kind_of? Time) ? DateTime.parse(@start_time.to_s) : @start_time
            @start_time = Java::org.joda.time.DateTime.new(@start_time.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for end_time [type = org.joda.time.DateTime]
          if !@end_time.nil?
            @end_time =  (@end_time.kind_of? Time) ? DateTime.parse(@end_time.to_s) : @end_time
            @end_time = Java::org.joda.time.DateTime.new(@end_time.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for amount [type = java.math.BigDecimal]
          if @amount.nil?
            @amount = java.math.BigDecimal::ZERO
          else
            @amount = java.math.BigDecimal.new(@amount.to_s)
          end
          self
        end

        def to_ruby(j_obj)
          # conversion for subscription_id [type = java.util.UUID]
          @subscription_id = j_obj.subscription_id
          @subscription_id = @subscription_id.nil? ? nil : @subscription_id.to_s

          # conversion for unit_type [type = java.lang.String]
          @unit_type = j_obj.unit_type

          # conversion for start_time [type = org.joda.time.DateTime]
          @start_time = j_obj.start_time
          if !@start_time.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@start_time)
            @start_time = DateTime.iso8601(str)
          end

          # conversion for end_time [type = org.joda.time.DateTime]
          @end_time = j_obj.end_time
          if !@end_time.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@end_time)
            @end_time = DateTime.iso8601(str)
          end

          # conversion for amount [type = java.math.BigDecimal]
          @amount = j_obj.amount
          @amount = @amount.nil? ? 0 : BigDecimal.new(@amount.to_s)
          self
        end

      end
    end
  end
end
