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
      class TieredBlock

        include org.killbill.billing.catalog.api.TieredBlock

        attr_accessor :type, :unit, :size, :price, :min_top_up_credit, :max

        def initialize()
        end

        def to_java()
          # conversion for type [type = org.killbill.billing.catalog.api.BlockType]
          @type = Java::org.killbill.billing.catalog.api.BlockType.value_of( @type.to_s ) unless @type.nil?

          # conversion for unit [type = org.killbill.billing.catalog.api.Unit]
          @unit = @unit.to_java unless @unit.nil?

          # conversion for size [type = java.lang.Double]
          @size = @size

          # conversion for price [type = org.killbill.billing.catalog.api.InternationalPrice]
          @price = @price.to_java unless @price.nil?

          # conversion for min_top_up_credit [type = java.lang.Double]
          @min_top_up_credit = @min_top_up_credit

          # conversion for max [type = java.lang.Double]
          @max = @max
          self
        end

        def to_ruby(j_obj)
          # conversion for type [type = org.killbill.billing.catalog.api.BlockType]
          @type = j_obj.type
          @type = @type.to_s.to_sym unless @type.nil?

          # conversion for unit [type = org.killbill.billing.catalog.api.Unit]
          @unit = j_obj.unit
          @unit = Killbill::Plugin::Model::Unit.new.to_ruby(@unit) unless @unit.nil?

          # conversion for size [type = java.lang.Double]
          @size = j_obj.size

          # conversion for price [type = org.killbill.billing.catalog.api.InternationalPrice]
          @price = j_obj.price
          @price = Killbill::Plugin::Model::InternationalPrice.new.to_ruby(@price) unless @price.nil?

          # conversion for min_top_up_credit [type = java.lang.Double]
          #@min_top_up_credit = j_obj.min_top_up_credit

          # conversion for max [type = java.lang.Double]
          @max = j_obj.max
          self
        end

      end
    end
  end
end
