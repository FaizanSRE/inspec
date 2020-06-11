# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2018-02-14-preview/generated/azure_mgmt_key_vault/module_definition'
require 'ms_rest_azure'

module Azure::KeyVault::Mgmt::V2018_02_14_preview
  autoload :Vaults,                                             '2018-02-14-preview/generated/azure_mgmt_key_vault/vaults.rb'
  autoload :Operations,                                         '2018-02-14-preview/generated/azure_mgmt_key_vault/operations.rb'
  autoload :Secrets,                                            '2018-02-14-preview/generated/azure_mgmt_key_vault/secrets.rb'
  autoload :KeyVaultManagementClient,                           '2018-02-14-preview/generated/azure_mgmt_key_vault/key_vault_management_client.rb'

  module Models
    autoload :Resource,                                           '2018-02-14-preview/generated/azure_mgmt_key_vault/models/resource.rb'
    autoload :Sku,                                                '2018-02-14-preview/generated/azure_mgmt_key_vault/models/sku.rb'
    autoload :ResourceListResult,                                 '2018-02-14-preview/generated/azure_mgmt_key_vault/models/resource_list_result.rb'
    autoload :AccessPolicyEntry,                                  '2018-02-14-preview/generated/azure_mgmt_key_vault/models/access_policy_entry.rb'
    autoload :VaultCheckNameAvailabilityParameters,               '2018-02-14-preview/generated/azure_mgmt_key_vault/models/vault_check_name_availability_parameters.rb'
    autoload :VirtualNetworkRule,                                 '2018-02-14-preview/generated/azure_mgmt_key_vault/models/virtual_network_rule.rb'
    autoload :CheckNameAvailabilityResult,                        '2018-02-14-preview/generated/azure_mgmt_key_vault/models/check_name_availability_result.rb'
    autoload :VaultProperties,                                    '2018-02-14-preview/generated/azure_mgmt_key_vault/models/vault_properties.rb'
    autoload :OperationDisplay,                                   '2018-02-14-preview/generated/azure_mgmt_key_vault/models/operation_display.rb'
    autoload :VaultAccessPolicyProperties,                        '2018-02-14-preview/generated/azure_mgmt_key_vault/models/vault_access_policy_properties.rb'
    autoload :LogSpecification,                                   '2018-02-14-preview/generated/azure_mgmt_key_vault/models/log_specification.rb'
    autoload :VaultCreateOrUpdateParameters,                      '2018-02-14-preview/generated/azure_mgmt_key_vault/models/vault_create_or_update_parameters.rb'
    autoload :ServiceSpecification,                               '2018-02-14-preview/generated/azure_mgmt_key_vault/models/service_specification.rb'
    autoload :VaultAccessPolicyParameters,                        '2018-02-14-preview/generated/azure_mgmt_key_vault/models/vault_access_policy_parameters.rb'
    autoload :Operation,                                          '2018-02-14-preview/generated/azure_mgmt_key_vault/models/operation.rb'
    autoload :DeletedVault,                                       '2018-02-14-preview/generated/azure_mgmt_key_vault/models/deleted_vault.rb'
    autoload :OperationListResult,                                '2018-02-14-preview/generated/azure_mgmt_key_vault/models/operation_list_result.rb'
    autoload :DeletedVaultListResult,                             '2018-02-14-preview/generated/azure_mgmt_key_vault/models/deleted_vault_list_result.rb'
    autoload :Attributes,                                         '2018-02-14-preview/generated/azure_mgmt_key_vault/models/attributes.rb'
    autoload :IPRule,                                             '2018-02-14-preview/generated/azure_mgmt_key_vault/models/iprule.rb'
    autoload :NetworkRuleSet,                                     '2018-02-14-preview/generated/azure_mgmt_key_vault/models/network_rule_set.rb'
    autoload :VaultPatchProperties,                               '2018-02-14-preview/generated/azure_mgmt_key_vault/models/vault_patch_properties.rb'
    autoload :VaultPatchParameters,                               '2018-02-14-preview/generated/azure_mgmt_key_vault/models/vault_patch_parameters.rb'
    autoload :SecretProperties,                                   '2018-02-14-preview/generated/azure_mgmt_key_vault/models/secret_properties.rb'
    autoload :VaultListResult,                                    '2018-02-14-preview/generated/azure_mgmt_key_vault/models/vault_list_result.rb'
    autoload :SecretPatchProperties,                              '2018-02-14-preview/generated/azure_mgmt_key_vault/models/secret_patch_properties.rb'
    autoload :DeletedVaultProperties,                             '2018-02-14-preview/generated/azure_mgmt_key_vault/models/deleted_vault_properties.rb'
    autoload :SecretCreateOrUpdateParameters,                     '2018-02-14-preview/generated/azure_mgmt_key_vault/models/secret_create_or_update_parameters.rb'
    autoload :Permissions,                                        '2018-02-14-preview/generated/azure_mgmt_key_vault/models/permissions.rb'
    autoload :SecretPatchParameters,                              '2018-02-14-preview/generated/azure_mgmt_key_vault/models/secret_patch_parameters.rb'
    autoload :SecretListResult,                                   '2018-02-14-preview/generated/azure_mgmt_key_vault/models/secret_list_result.rb'
    autoload :Vault,                                              '2018-02-14-preview/generated/azure_mgmt_key_vault/models/vault.rb'
    autoload :SecretAttributes,                                   '2018-02-14-preview/generated/azure_mgmt_key_vault/models/secret_attributes.rb'
    autoload :Secret,                                             '2018-02-14-preview/generated/azure_mgmt_key_vault/models/secret.rb'
    autoload :SkuName,                                            '2018-02-14-preview/generated/azure_mgmt_key_vault/models/sku_name.rb'
    autoload :KeyPermissions,                                     '2018-02-14-preview/generated/azure_mgmt_key_vault/models/key_permissions.rb'
    autoload :SecretPermissions,                                  '2018-02-14-preview/generated/azure_mgmt_key_vault/models/secret_permissions.rb'
    autoload :CertificatePermissions,                             '2018-02-14-preview/generated/azure_mgmt_key_vault/models/certificate_permissions.rb'
    autoload :StoragePermissions,                                 '2018-02-14-preview/generated/azure_mgmt_key_vault/models/storage_permissions.rb'
    autoload :CreateMode,                                         '2018-02-14-preview/generated/azure_mgmt_key_vault/models/create_mode.rb'
    autoload :NetworkRuleBypassOptions,                           '2018-02-14-preview/generated/azure_mgmt_key_vault/models/network_rule_bypass_options.rb'
    autoload :NetworkRuleAction,                                  '2018-02-14-preview/generated/azure_mgmt_key_vault/models/network_rule_action.rb'
    autoload :Reason,                                             '2018-02-14-preview/generated/azure_mgmt_key_vault/models/reason.rb'
    autoload :AccessPolicyUpdateKind,                             '2018-02-14-preview/generated/azure_mgmt_key_vault/models/access_policy_update_kind.rb'
  end
end