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
    module Api

      java_package 'org.killbill.billing.payment.api'
      class AdminPaymentApi

        include org.killbill.billing.payment.api.AdminPaymentApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::void fixPaymentTransactionState(Java::org.killbill.billing.payment.api.Payment, Java::org.killbill.billing.payment.api.PaymentTransaction, Java::org.killbill.billing.payment.api.TransactionStatus, Java::java.lang.String, Java::java.lang.String, Java::java.lang.Iterable, Java::org.killbill.billing.util.callcontext.CallContext)'
        def fix_payment_transaction_state(payment, paymentTransaction, transactionStatus, lastSuccessPaymentState, currentPaymentStateName, properties, context)

          # conversion for payment [type = org.killbill.billing.payment.api.Payment]
          payment = payment.to_java unless payment.nil?

          # conversion for paymentTransaction [type = org.killbill.billing.payment.api.PaymentTransaction]
          paymentTransaction = paymentTransaction.to_java unless paymentTransaction.nil?

          # conversion for transactionStatus [type = org.killbill.billing.payment.api.TransactionStatus]
          transactionStatus = Java::org.killbill.billing.payment.api.TransactionStatus.value_of( transactionStatus.to_s ) unless transactionStatus.nil?

          # conversion for lastSuccessPaymentState [type = java.lang.String]
          lastSuccessPaymentState = lastSuccessPaymentState.to_s unless lastSuccessPaymentState.nil?

          # conversion for currentPaymentStateName [type = java.lang.String]
          currentPaymentStateName = currentPaymentStateName.to_s unless currentPaymentStateName.nil?

          # conversion for properties [type = java.lang.Iterable]
          tmp = java.util.ArrayList.new
          (properties || []).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          properties = tmp

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.fix_payment_transaction_state(payment, paymentTransaction, transactionStatus, lastSuccessPaymentState, currentPaymentStateName, properties, context)
        end
      end
    end
  end
end