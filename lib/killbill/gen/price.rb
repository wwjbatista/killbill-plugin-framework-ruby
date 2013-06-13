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

      java_package 'com.ning.billing.catalog.api'
      class Price

        include com.ning.billing.catalog.api.Price

        attr_accessor :currency, :value

        def initialize()
        end

        def to_java()
          # conversion for currency [type = com.ning.billing.catalog.api.Currency]
          @currency = Java::com.ning.billing.catalog.api.Currency.value_of("#{@currency.to_s}") unless @currency.nil?

          # conversion for value [type = java.math.BigDecimal]
          if @value.nil?
            @value = java.math.BigDecimal::ZERO
          else
            @value = java.math.BigDecimal.new(@value.to_i)
          end
        end

        def to_ruby(j_obj)
          # conversion for currency [type = com.ning.billing.catalog.api.Currency]
          @currency = j_obj.currency
          @currency = @currency.to_s unless @currency.nil?

          # conversion for value [type = java.math.BigDecimal]
          @value = j_obj.value
          @value = @value.nil? ? 0 : @value.to_s.to_i
        end

      end
    end
  end
end
