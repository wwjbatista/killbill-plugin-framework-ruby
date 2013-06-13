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

      java_package 'com.ning.billing.tenant.api'
      class TenantData

        include com.ning.billing.tenant.api.TenantData

        attr_accessor :external_key, :api_key, :api_secret

        def initialize()
        end

        def to_java()
          # conversion for external_key [type = java.lang.String]
          @external_key = @external_key.to_s unless @external_key.nil?

          # conversion for api_key [type = java.lang.String]
          @api_key = @api_key.to_s unless @api_key.nil?

          # conversion for api_secret [type = java.lang.String]
          @api_secret = @api_secret.to_s unless @api_secret.nil?
        end

        def to_ruby(j_obj)
          # conversion for external_key [type = java.lang.String]
          @external_key = j_obj.external_key

          # conversion for api_key [type = java.lang.String]
          @api_key = j_obj.api_key

          # conversion for api_secret [type = java.lang.String]
          @api_secret = j_obj.api_secret
        end

      end
    end
  end
end
