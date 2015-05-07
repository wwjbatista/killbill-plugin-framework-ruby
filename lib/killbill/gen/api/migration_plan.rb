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

      java_package 'org.killbill.billing.catalog.api'
      class MigrationPlan

        include org.killbill.billing.catalog.api.MigrationPlan

        attr_accessor :initial_phases, :product, :name, :is_retired, :initial_phase_iterator, :final_phase, :recurring_billing_period, :plans_allowed_in_bundle, :all_phases, :effective_date_for_existing_subscriptons

        def initialize()
        end

        def to_java()
          # conversion for initial_phases [type = org.killbill.billing.catalog.api.PlanPhase[]]
          tmp = java.util.ArrayList.new
          (@initial_phases || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.PlanPhase]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @initial_phases = tmp.toArray

          # conversion for product [type = org.killbill.billing.catalog.api.Product]
          @product = @product.to_java unless @product.nil?

          # conversion for name [type = java.lang.String]
          @name = @name.to_s unless @name.nil?

          # conversion for is_retired [type = boolean]
          @is_retired = @is_retired.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_retired)

          # conversion for initial_phase_iterator [type = java.util.Iterator]
          @initial_phase_iterator = Killbill::Plugin::Model::EnumeratorIterator.new(@initial_phase_iterator)

          # conversion for final_phase [type = org.killbill.billing.catalog.api.PlanPhase]
          @final_phase = @final_phase.to_java unless @final_phase.nil?

          # conversion for recurring_billing_period [type = org.killbill.billing.catalog.api.BillingPeriod]
          @recurring_billing_period = Java::org.killbill.billing.catalog.api.BillingPeriod.value_of( @recurring_billing_period.to_s ) unless @recurring_billing_period.nil?

          # conversion for plans_allowed_in_bundle [type = int]
          @plans_allowed_in_bundle = @plans_allowed_in_bundle

          # conversion for all_phases [type = org.killbill.billing.catalog.api.PlanPhase[]]
          tmp = java.util.ArrayList.new
          (@all_phases || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.PlanPhase]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @all_phases = tmp.toArray

          # conversion for effective_date_for_existing_subscriptons [type = java.util.Date]
          if !@effective_date_for_existing_subscriptons.nil?
            @effective_date_for_existing_subscriptons =  (@effective_date_for_existing_subscriptons.kind_of? Time) ? DateTime.parse(@effective_date_for_existing_subscriptons.to_s) : @effective_date_for_existing_subscriptons
            @effective_date_for_existing_subscriptons = Java::org.joda.time.DateTime.new(@effective_date_for_existing_subscriptons.to_s, Java::org.joda.time.DateTimeZone::UTC)
            @effective_date_for_existing_subscriptons = @effective_date_for_existing_subscriptons.to_date
          end
          self
        end

        def to_ruby(j_obj)
          # conversion for initial_phases [type = org.killbill.billing.catalog.api.PlanPhase[]]
          @initial_phases = j_obj.initial_phases
          tmp = []
          (@initial_phases || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.PlanPhase]
            m = Killbill::Plugin::Model::PlanPhase.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @initial_phases = tmp

          # conversion for product [type = org.killbill.billing.catalog.api.Product]
          @product = j_obj.product
          @product = Killbill::Plugin::Model::Product.new.to_ruby(@product) unless @product.nil?

          # conversion for name [type = java.lang.String]
          @name = j_obj.name

          # conversion for is_retired [type = boolean]
          @is_retired = j_obj.is_retired
          if @is_retired.nil?
            @is_retired = false
          else
            tmp_bool = (@is_retired.java_kind_of? java.lang.Boolean) ? @is_retired.boolean_value : @is_retired
            @is_retired = tmp_bool ? true : false
          end

          # conversion for initial_phase_iterator [type = java.util.Iterator]
          @initial_phase_iterator = j_obj.initial_phase_iterator

          # conversion for final_phase [type = org.killbill.billing.catalog.api.PlanPhase]
          @final_phase = j_obj.final_phase
          @final_phase = Killbill::Plugin::Model::PlanPhase.new.to_ruby(@final_phase) unless @final_phase.nil?

          # conversion for recurring_billing_period [type = org.killbill.billing.catalog.api.BillingPeriod]
          @recurring_billing_period = j_obj.recurring_billing_period
          @recurring_billing_period = @recurring_billing_period.to_s.to_sym unless @recurring_billing_period.nil?

          # conversion for plans_allowed_in_bundle [type = int]
          @plans_allowed_in_bundle = j_obj.plans_allowed_in_bundle

          # conversion for all_phases [type = org.killbill.billing.catalog.api.PlanPhase[]]
          @all_phases = j_obj.all_phases
          tmp = []
          (@all_phases || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.PlanPhase]
            m = Killbill::Plugin::Model::PlanPhase.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @all_phases = tmp

          # conversion for effective_date_for_existing_subscriptons [type = java.util.Date]
          @effective_date_for_existing_subscriptons = j_obj.effective_date_for_existing_subscriptons
          if !@effective_date_for_existing_subscriptons.nil?
            @effective_date_for_existing_subscriptons = Java::org.joda.time.DateTime.new(@effective_date_for_existing_subscriptons)
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@effective_date_for_existing_subscriptons)
            @effective_date_for_existing_subscriptons = DateTime.iso8601(str)
          end
          self
        end

      end
    end
  end
end
