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

      class InvoiceNotificationMetadata


        attr_accessor :target_date, :amount_owed, :currency

        def initialize()
        end

        def to_java()
          # conversion for target_date [type = org.joda.time.DateTime]
          if !@target_date.nil?
            @target_date =  (@target_date.kind_of? Time) ? DateTime.parse(@target_date.to_s) : @target_date
            @target_date = Java::org.joda.time.DateTime.new(@target_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for amount_owed [type = java.math.BigDecimal]
          if @amount_owed.nil?
            @amount_owed = java.math.BigDecimal::ZERO
          else
            @amount_owed = java.math.BigDecimal.new(@amount_owed.to_s)
          end

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = Java::org.killbill.billing.catalog.api.Currency.value_of( @currency.to_s ) unless @currency.nil?
          Java::org.killbill.billing.notification.plugin.api.InvoiceNotificationMetadata.new(@target_date, @amount_owed, @currency)
        end

        def to_ruby(j_obj)
          # conversion for target_date [type = org.joda.time.DateTime]
          @target_date = j_obj.target_date
          if !@target_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@target_date)
            @target_date = DateTime.iso8601(str)
          end

          # conversion for amount_owed [type = java.math.BigDecimal]
          @amount_owed = j_obj.amount_owed
          @amount_owed = @amount_owed.nil? ? 0 : BigDecimal.new(@amount_owed.to_s)

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = j_obj.currency
          @currency = @currency.to_s.to_sym unless @currency.nil?
          self
        end

      end
    end
  end
end