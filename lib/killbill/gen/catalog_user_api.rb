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

      java_package 'com.ning.billing.catalog.api'
      class CatalogUserApi

        include com.ning.billing.catalog.api.CatalogUserApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::com.ning.billing.catalog.api.Catalog getCatalog(Java::java.lang.String, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_catalog(catalogName, context)
          # conversion for catalogName [type = java.lang.String]
          catalogName = catalogName.to_s unless catalogName.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_catalog(catalogName, context)
          # conversion for res [type = com.ning.billing.catalog.api.Catalog]
          res = Killbill::Plugin::Model::Catalog.new.to_ruby(res) unless res.nil?
          return res
        end
      end
    end
  end
end
