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

      java_package 'org.killbill.billing.osgi.api'
      class OSGIKillbill

        include org.killbill.billing.osgi.api.OSGIKillbill

        attr_accessor :account_user_api, :catalog_user_api, :subscription_api, :invoice_payment_api, :invoice_user_api, :payment_api, :tenant_user_api, :usage_user_api, :audit_user_api, :custom_field_user_api, :export_user_api, :tag_user_api, :entitlement_api, :record_id_api, :currency_conversion_api, :plugin_config_service_api, :security_api, :plugins_info_api, :killbill_nodes_api, :admin_payment_api

        def initialize()
        end

        def to_java()
          # conversion for account_user_api [type = org.killbill.billing.account.api.AccountUserApi]
          @account_user_api = @account_user_api.to_java unless @account_user_api.nil?

          # conversion for catalog_user_api [type = org.killbill.billing.catalog.api.CatalogUserApi]
          @catalog_user_api = @catalog_user_api.to_java unless @catalog_user_api.nil?

          # conversion for subscription_api [type = org.killbill.billing.entitlement.api.SubscriptionApi]
          @subscription_api = @subscription_api.to_java unless @subscription_api.nil?

          # conversion for invoice_payment_api [type = org.killbill.billing.invoice.api.InvoicePaymentApi]
          @invoice_payment_api = @invoice_payment_api.to_java unless @invoice_payment_api.nil?

          # conversion for invoice_user_api [type = org.killbill.billing.invoice.api.InvoiceUserApi]
          @invoice_user_api = @invoice_user_api.to_java unless @invoice_user_api.nil?

          # conversion for payment_api [type = org.killbill.billing.payment.api.PaymentApi]
          @payment_api = @payment_api.to_java unless @payment_api.nil?

          # conversion for tenant_user_api [type = org.killbill.billing.tenant.api.TenantUserApi]
          @tenant_user_api = @tenant_user_api.to_java unless @tenant_user_api.nil?

          # conversion for usage_user_api [type = org.killbill.billing.usage.api.UsageUserApi]
          @usage_user_api = @usage_user_api.to_java unless @usage_user_api.nil?

          # conversion for audit_user_api [type = org.killbill.billing.util.api.AuditUserApi]
          @audit_user_api = @audit_user_api.to_java unless @audit_user_api.nil?

          # conversion for custom_field_user_api [type = org.killbill.billing.util.api.CustomFieldUserApi]
          @custom_field_user_api = @custom_field_user_api.to_java unless @custom_field_user_api.nil?

          # conversion for export_user_api [type = org.killbill.billing.util.api.ExportUserApi]
          @export_user_api = @export_user_api.to_java unless @export_user_api.nil?

          # conversion for tag_user_api [type = org.killbill.billing.util.api.TagUserApi]
          @tag_user_api = @tag_user_api.to_java unless @tag_user_api.nil?

          # conversion for entitlement_api [type = org.killbill.billing.entitlement.api.EntitlementApi]
          @entitlement_api = @entitlement_api.to_java unless @entitlement_api.nil?

          # conversion for record_id_api [type = org.killbill.billing.util.api.RecordIdApi]
          @record_id_api = @record_id_api.to_java unless @record_id_api.nil?

          # conversion for currency_conversion_api [type = org.killbill.billing.currency.api.CurrencyConversionApi]
          @currency_conversion_api = @currency_conversion_api.to_java unless @currency_conversion_api.nil?

          # conversion for plugin_config_service_api [type = org.killbill.billing.osgi.api.config.PluginConfigServiceApi]
          @plugin_config_service_api = @plugin_config_service_api.to_java unless @plugin_config_service_api.nil?

          # conversion for security_api [type = org.killbill.billing.security.api.SecurityApi]
          @security_api = @security_api.to_java unless @security_api.nil?

          # conversion for plugins_info_api [type = org.killbill.billing.osgi.api.PluginsInfoApi]
          @plugins_info_api = @plugins_info_api.to_java unless @plugins_info_api.nil?

          # conversion for killbill_nodes_api [type = org.killbill.billing.util.nodes.KillbillNodesApi]
          @killbill_nodes_api = @killbill_nodes_api.to_java unless @killbill_nodes_api.nil?

          # conversion for admin_payment_api [type = org.killbill.billing.payment.api.AdminPaymentApi]
          @admin_payment_api = @admin_payment_api.to_java unless @admin_payment_api.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for account_user_api [type = org.killbill.billing.account.api.AccountUserApi]
          @account_user_api = j_obj.account_user_api
          @account_user_api = Killbill::Plugin::Model::AccountUserApi.new.to_ruby(@account_user_api) unless @account_user_api.nil?

          # conversion for catalog_user_api [type = org.killbill.billing.catalog.api.CatalogUserApi]
          @catalog_user_api = j_obj.catalog_user_api
          @catalog_user_api = Killbill::Plugin::Model::CatalogUserApi.new.to_ruby(@catalog_user_api) unless @catalog_user_api.nil?

          # conversion for subscription_api [type = org.killbill.billing.entitlement.api.SubscriptionApi]
          @subscription_api = j_obj.subscription_api
          @subscription_api = Killbill::Plugin::Model::SubscriptionApi.new.to_ruby(@subscription_api) unless @subscription_api.nil?

          # conversion for invoice_payment_api [type = org.killbill.billing.invoice.api.InvoicePaymentApi]
          @invoice_payment_api = j_obj.invoice_payment_api
          @invoice_payment_api = Killbill::Plugin::Model::InvoicePaymentApi.new.to_ruby(@invoice_payment_api) unless @invoice_payment_api.nil?

          # conversion for invoice_user_api [type = org.killbill.billing.invoice.api.InvoiceUserApi]
          @invoice_user_api = j_obj.invoice_user_api
          @invoice_user_api = Killbill::Plugin::Model::InvoiceUserApi.new.to_ruby(@invoice_user_api) unless @invoice_user_api.nil?

          # conversion for payment_api [type = org.killbill.billing.payment.api.PaymentApi]
          @payment_api = j_obj.payment_api
          @payment_api = Killbill::Plugin::Model::PaymentApi.new.to_ruby(@payment_api) unless @payment_api.nil?

          # conversion for tenant_user_api [type = org.killbill.billing.tenant.api.TenantUserApi]
          @tenant_user_api = j_obj.tenant_user_api
          @tenant_user_api = Killbill::Plugin::Model::TenantUserApi.new.to_ruby(@tenant_user_api) unless @tenant_user_api.nil?

          # conversion for usage_user_api [type = org.killbill.billing.usage.api.UsageUserApi]
          @usage_user_api = j_obj.usage_user_api
          @usage_user_api = Killbill::Plugin::Model::UsageUserApi.new.to_ruby(@usage_user_api) unless @usage_user_api.nil?

          # conversion for audit_user_api [type = org.killbill.billing.util.api.AuditUserApi]
          @audit_user_api = j_obj.audit_user_api
          @audit_user_api = Killbill::Plugin::Model::AuditUserApi.new.to_ruby(@audit_user_api) unless @audit_user_api.nil?

          # conversion for custom_field_user_api [type = org.killbill.billing.util.api.CustomFieldUserApi]
          @custom_field_user_api = j_obj.custom_field_user_api
          @custom_field_user_api = Killbill::Plugin::Model::CustomFieldUserApi.new.to_ruby(@custom_field_user_api) unless @custom_field_user_api.nil?

          # conversion for export_user_api [type = org.killbill.billing.util.api.ExportUserApi]
          @export_user_api = j_obj.export_user_api
          @export_user_api = Killbill::Plugin::Model::ExportUserApi.new.to_ruby(@export_user_api) unless @export_user_api.nil?

          # conversion for tag_user_api [type = org.killbill.billing.util.api.TagUserApi]
          @tag_user_api = j_obj.tag_user_api
          @tag_user_api = Killbill::Plugin::Model::TagUserApi.new.to_ruby(@tag_user_api) unless @tag_user_api.nil?

          # conversion for entitlement_api [type = org.killbill.billing.entitlement.api.EntitlementApi]
          @entitlement_api = j_obj.entitlement_api
          @entitlement_api = Killbill::Plugin::Model::EntitlementApi.new.to_ruby(@entitlement_api) unless @entitlement_api.nil?

          # conversion for record_id_api [type = org.killbill.billing.util.api.RecordIdApi]
          @record_id_api = j_obj.record_id_api
          @record_id_api = Killbill::Plugin::Model::RecordIdApi.new.to_ruby(@record_id_api) unless @record_id_api.nil?

          # conversion for currency_conversion_api [type = org.killbill.billing.currency.api.CurrencyConversionApi]
          @currency_conversion_api = j_obj.currency_conversion_api
          @currency_conversion_api = Killbill::Plugin::Model::CurrencyConversionApi.new.to_ruby(@currency_conversion_api) unless @currency_conversion_api.nil?

          # conversion for plugin_config_service_api [type = org.killbill.billing.osgi.api.config.PluginConfigServiceApi]
          @plugin_config_service_api = j_obj.plugin_config_service_api
          @plugin_config_service_api = Killbill::Plugin::Model::PluginConfigServiceApi.new.to_ruby(@plugin_config_service_api) unless @plugin_config_service_api.nil?

          # conversion for security_api [type = org.killbill.billing.security.api.SecurityApi]
          @security_api = j_obj.security_api
          @security_api = Killbill::Plugin::Model::SecurityApi.new.to_ruby(@security_api) unless @security_api.nil?

          # conversion for plugins_info_api [type = org.killbill.billing.osgi.api.PluginsInfoApi]
          @plugins_info_api = j_obj.plugins_info_api
          @plugins_info_api = Killbill::Plugin::Model::PluginsInfoApi.new.to_ruby(@plugins_info_api) unless @plugins_info_api.nil?

          # conversion for killbill_nodes_api [type = org.killbill.billing.util.nodes.KillbillNodesApi]
          @killbill_nodes_api = j_obj.killbill_nodes_api
          @killbill_nodes_api = Killbill::Plugin::Model::KillbillNodesApi.new.to_ruby(@killbill_nodes_api) unless @killbill_nodes_api.nil?

          # conversion for admin_payment_api [type = org.killbill.billing.payment.api.AdminPaymentApi]
          @admin_payment_api = j_obj.admin_payment_api
          @admin_payment_api = Killbill::Plugin::Model::AdminPaymentApi.new.to_ruby(@admin_payment_api) unless @admin_payment_api.nil?
          self
        end

      end
    end
  end
end
