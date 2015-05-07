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

      java_package 'org.killbill.billing.currency.api'
      class CurrencyConversionApi

        include org.killbill.billing.currency.api.CurrencyConversionApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::java.util.Set getBaseRates()'
        def get_base_rates()
        begin
          res = @real_java_api.get_base_rates()
          # conversion for res [type = java.util.Set]
          tmp = []
          (res || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Currency]
            m = m.to_s.to_sym unless m.nil?
            tmp << m
          end
          res = tmp
          return res
        rescue Java::org.killbill.billing.currency.api.CurrencyConversionException => e
          raise Killbill::Plugin::Model::CurrencyConversionException.new.to_ruby(e)
        end
      end

      java_signature 'Java::org.killbill.billing.currency.api.CurrencyConversion getCurrentCurrencyConversion(Java::org.killbill.billing.catalog.api.Currency)'
      def get_current_currency_conversion(baseCurrency)

        # conversion for baseCurrency [type = org.killbill.billing.catalog.api.Currency]
        baseCurrency = Java::JavaLang::Enum.value_of( org.killbill.billing.catalog.api.Currency.java_class, baseCurrency.to_s ) unless baseCurrency.nil?
        begin
          res = @real_java_api.get_current_currency_conversion(baseCurrency)
          # conversion for res [type = org.killbill.billing.currency.api.CurrencyConversion]
          res = Killbill::Plugin::Model::CurrencyConversion.new.to_ruby(res) unless res.nil?
          return res
        rescue Java::org.killbill.billing.currency.api.CurrencyConversionException => e
          raise Killbill::Plugin::Model::CurrencyConversionException.new.to_ruby(e)
        end
      end

      java_signature 'Java::org.killbill.billing.currency.api.CurrencyConversion getCurrencyConversion(Java::org.killbill.billing.catalog.api.Currency, Java::org.joda.time.DateTime)'
      def get_currency_conversion(baseCurrency, dateConversion)

        # conversion for baseCurrency [type = org.killbill.billing.catalog.api.Currency]
        baseCurrency = Java::JavaLang::Enum.value_of( org.killbill.billing.catalog.api.Currency.java_class, baseCurrency.to_s ) unless baseCurrency.nil?

        # conversion for dateConversion [type = org.joda.time.DateTime]
        if !dateConversion.nil?
          dateConversion =  (dateConversion.kind_of? Time) ? DateTime.parse(dateConversion.to_s) : dateConversion
          dateConversion = Java::org.joda.time.DateTime.new(dateConversion.to_s, Java::org.joda.time.DateTimeZone::UTC)
        end
        begin
          res = @real_java_api.get_currency_conversion(baseCurrency, dateConversion)
          # conversion for res [type = org.killbill.billing.currency.api.CurrencyConversion]
          res = Killbill::Plugin::Model::CurrencyConversion.new.to_ruby(res) unless res.nil?
          return res
        rescue Java::org.killbill.billing.currency.api.CurrencyConversionException => e
          raise Killbill::Plugin::Model::CurrencyConversionException.new.to_ruby(e)
        end
      end
    end
  end
end
end
