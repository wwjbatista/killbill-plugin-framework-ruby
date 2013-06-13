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
    module Api

      java_package 'com.ning.billing.invoice.api'
      class InvoiceMigrationApi

        include com.ning.billing.invoice.api.InvoiceMigrationApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::java.util.UUID createMigrationInvoice(Java::java.util.UUID, Java::org.joda.time.LocalDate, Java::java.math.BigDecimal, Java::com.ning.billing.catalog.api.Currency, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_migration_invoice(accountId, targetDate, balance, currency, context)
          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?
          # conversion for targetDate [type = org.joda.time.LocalDate]
          if !targetDate.nil?
            targetDate = Java::org.joda.time.LocalDate.parse(targetDate.to_s)
          end
          # conversion for balance [type = java.math.BigDecimal]
          if balance.nil?
            balance = java.math.BigDecimal::ZERO
          else
            balance = java.math.BigDecimal.new(balance.to_i)
          end
          # conversion for currency [type = com.ning.billing.catalog.api.Currency]
          currency = Java::com.ning.billing.catalog.api.Currency.value_of("#{currency.to_s}") unless currency.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.create_migration_invoice(accountId, targetDate, balance, currency, context)
          # conversion for res [type = java.util.UUID]
          res = res.nil? ? nil : res.to_s
          return res
        end
      end
    end
  end
end
