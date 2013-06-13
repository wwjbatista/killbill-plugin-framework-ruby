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

      java_package 'com.ning.billing.junction.api'
      class JunctionApi

        include com.ning.billing.junction.api.JunctionApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::java.util.List getBlockingHistory(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_blocking_history(overdueableId, context)
          # conversion for overdueableId [type = java.util.UUID]
          overdueableId = java.util.UUID.fromString(overdueableId.to_s) unless overdueableId.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_blocking_history(overdueableId, context)
          # conversion for res [type = java.util.List]
          tmp = []
          res.each do |m|
            # conversion for m [type = com.ning.billing.junction.api.BlockingState]
            m = Killbill::Plugin::Model::BlockingState.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          res = tmp
          return res
        end
      end
    end
  end
end
