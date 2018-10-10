=begin
#JumpCloud APIs

# JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

# Common files
require 'jcapiv1/api_client'
require 'jcapiv1/api_error'
require 'jcapiv1/version'
require 'jcapiv1/configuration'

# Models
require 'jcapiv1/models/application'
require 'jcapiv1/models/application_config'
require 'jcapiv1/models/application_config_constant_attributes'
require 'jcapiv1/models/application_config_constant_attributes_value'
require 'jcapiv1/models/application_config_database_attributes'
require 'jcapiv1/models/application_config_idp_entity_id'
require 'jcapiv1/models/application_config_idp_entity_id_tooltip'
require 'jcapiv1/models/application_config_idp_entity_id_tooltip_variables'
require 'jcapiv1/models/applicationslist'
require 'jcapiv1/models/body'
require 'jcapiv1/models/command'
require 'jcapiv1/models/commandfilereturn'
require 'jcapiv1/models/commandfilereturn_results'
require 'jcapiv1/models/commandresult'
require 'jcapiv1/models/commandresult_response'
require 'jcapiv1/models/commandresult_response_data'
require 'jcapiv1/models/commandresultslist'
require 'jcapiv1/models/commandslist'
require 'jcapiv1/models/commandslist_results'
require 'jcapiv1/models/errorresponse'
require 'jcapiv1/models/fde'
require 'jcapiv1/models/organizationslist'
require 'jcapiv1/models/organizationslist_results'
require 'jcapiv1/models/radiusserver'
require 'jcapiv1/models/radiusserverpost'
require 'jcapiv1/models/radiusserverput'
require 'jcapiv1/models/radiusserverslist'
require 'jcapiv1/models/search'
require 'jcapiv1/models/sshkeylist'
require 'jcapiv1/models/sshkeypost'
require 'jcapiv1/models/system'
require 'jcapiv1/models/system_network_interfaces'
require 'jcapiv1/models/systemput'
require 'jcapiv1/models/systemput_agent_bound_messages'
require 'jcapiv1/models/systemslist'
require 'jcapiv1/models/systemuser'
require 'jcapiv1/models/systemuser_attributes'
require 'jcapiv1/models/systemuserbinding'
require 'jcapiv1/models/systemuserbindingsput'
require 'jcapiv1/models/systemuserput'
require 'jcapiv1/models/systemuserput_addresses'
require 'jcapiv1/models/systemuserput_phone_numbers'
require 'jcapiv1/models/systemuserputpost'
require 'jcapiv1/models/systemuserputpost_addresses'
require 'jcapiv1/models/systemuserputpost_phone_numbers'
require 'jcapiv1/models/systemuserreturn'
require 'jcapiv1/models/systemuserreturn_addresses'
require 'jcapiv1/models/systemuserreturn_phone_numbers'
require 'jcapiv1/models/systemuserslist'
require 'jcapiv1/models/tag'
require 'jcapiv1/models/tagpost'
require 'jcapiv1/models/tagput'
require 'jcapiv1/models/tagslist'
require 'jcapiv1/models/usersystembinding'
require 'jcapiv1/models/usersystembindingsput'

# APIs
require 'jcapiv1/api/applications_api'
require 'jcapiv1/api/command_results_api'
require 'jcapiv1/api/command_triggers_api'
require 'jcapiv1/api/commands_api'
require 'jcapiv1/api/organizations_api'
require 'jcapiv1/api/radius_servers_api'
require 'jcapiv1/api/search_api'
require 'jcapiv1/api/systems_api'
require 'jcapiv1/api/systemusers_api'
require 'jcapiv1/api/tags_api'

module JCAPIv1
  class << self
    # Customize default settings for the SDK using block.
    #   JCAPIv1.configure do |config|
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
