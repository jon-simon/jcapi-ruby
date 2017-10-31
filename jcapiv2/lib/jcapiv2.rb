=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

# Common files
require 'jcapiv2/api_client'
require 'jcapiv2/api_error'
require 'jcapiv2/version'
require 'jcapiv2/configuration'

# Models
require 'jcapiv2/models/active_directory_input'
require 'jcapiv2/models/body'
require 'jcapiv2/models/directory'
require 'jcapiv2/models/error'
require 'jcapiv2/models/graph_connection'
require 'jcapiv2/models/graph_management_req'
require 'jcapiv2/models/graph_object'
require 'jcapiv2/models/graph_object_with_paths'
require 'jcapiv2/models/graph_type'
require 'jcapiv2/models/group'
require 'jcapiv2/models/group_type'
require 'jcapiv2/models/inline_response_200'
require 'jcapiv2/models/ldap_server_input'
require 'jcapiv2/models/oauth_code_input'
require 'jcapiv2/models/policy'
require 'jcapiv2/models/policy_request'
require 'jcapiv2/models/policy_request_template'
require 'jcapiv2/models/policy_result'
require 'jcapiv2/models/policy_template'
require 'jcapiv2/models/policy_template_config_field'
require 'jcapiv2/models/policy_template_with_details'
require 'jcapiv2/models/policy_value'
require 'jcapiv2/models/policy_with_details'
require 'jcapiv2/models/samba_domain_input'
require 'jcapiv2/models/system_group'
require 'jcapiv2/models/system_group_data'
require 'jcapiv2/models/system_group_graph_management_req'
require 'jcapiv2/models/system_group_members_req'
require 'jcapiv2/models/user_group'
require 'jcapiv2/models/user_group_data'
require 'jcapiv2/models/user_group_data_attributes'
require 'jcapiv2/models/user_group_data_attributes_posix_groups'
require 'jcapiv2/models/user_group_graph_management_req'
require 'jcapiv2/models/user_group_members_req'
require 'jcapiv2/models/workday_input'
require 'jcapiv2/models/workday_output'
require 'jcapiv2/models/workday_report_result'
require 'jcapiv2/models/workday_report_row'
require 'jcapiv2/models/workday_request'
require 'jcapiv2/models/workdays_oauth'
require 'jcapiv2/models/active_directory_output'
require 'jcapiv2/models/ldap_server_output'
require 'jcapiv2/models/samba_domain_output'

# APIs
require 'jcapiv2/api/active_directory_api'
require 'jcapiv2/api/applications_api'
require 'jcapiv2/api/commands_api'
require 'jcapiv2/api/directories_api'
require 'jcapiv2/api/g_suite_api'
require 'jcapiv2/api/graph_api'
require 'jcapiv2/api/groups_api'
require 'jcapiv2/api/ldap_servers_api'
require 'jcapiv2/api/office365_api'
require 'jcapiv2/api/policies_api'
require 'jcapiv2/api/policytemplates_api'
require 'jcapiv2/api/radius_servers_api'
require 'jcapiv2/api/samba_domains_api'
require 'jcapiv2/api/system_groups_api'
require 'jcapiv2/api/systems_api'
require 'jcapiv2/api/user_groups_api'
require 'jcapiv2/api/users_api'
require 'jcapiv2/api/workday_api'

module JCAPIv2
  class << self
    # Customize default settings for the SDK using block.
    #   JCAPIv2.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end