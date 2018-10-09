=begin
#JumpCloud APIs

# JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JCAPIv2
  class CommandsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List the associations of a Command
    # This endpoint will return the _direct_ associations of this Command.  A direct association can be a non-homogeneous relationship between 2 different objects, for example Commands and User Groups.   #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/commands/{Command_ID}/associations?targets=system_group \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```
    # @param command_id ObjectID of the Command.
    # @param targets 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :x_org_id  (default to )
    # @return [Array<GraphConnection>]
    def graph_command_associations_list(command_id, targets, content_type, accept, opts = {})
      data, _status_code, _headers = graph_command_associations_list_with_http_info(command_id, targets, content_type, accept, opts)
      return data
    end

    # List the associations of a Command
    # This endpoint will return the _direct_ associations of this Command.  A direct association can be a non-homogeneous relationship between 2 different objects, for example Commands and User Groups.   #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/commands/{Command_ID}/associations?targets&#x3D;system_group \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
    # @param command_id ObjectID of the Command.
    # @param targets 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :x_org_id 
    # @return [Array<(Array<GraphConnection>, Fixnum, Hash)>] Array<GraphConnection> data, response status code and response headers
    def graph_command_associations_list_with_http_info(command_id, targets, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommandsApi.graph_command_associations_list ..."
      end
      # verify the required parameter 'command_id' is set
      if @api_client.config.client_side_validation && command_id.nil?
        fail ArgumentError, "Missing the required parameter 'command_id' when calling CommandsApi.graph_command_associations_list"
      end
      # verify the required parameter 'targets' is set
      if @api_client.config.client_side_validation && targets.nil?
        fail ArgumentError, "Missing the required parameter 'targets' when calling CommandsApi.graph_command_associations_list"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling CommandsApi.graph_command_associations_list"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling CommandsApi.graph_command_associations_list"
      end
      # resource path
      local_var_path = "/commands/{command_id}/associations".sub('{' + 'command_id' + '}', command_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'targets'] = @api_client.build_collection_param(targets, :csv)
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GraphConnection>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommandsApi#graph_command_associations_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Manage the associations of a Command
    # This endpoint will allow you to manage the _direct_ associations of this Command.  A direct association can be a non-homogeneous relationship between 2 different objects, for example Commands and User Groups.   #### Sample Request ```  curl -X POST https://console.jumpcloud.com/api/v2/commands/{Command_ID}/associations \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"op\": \"add\",     \"type\": \"system_group\",     \"id\": \"Group_ID\" }' ```
    # @param command_id ObjectID of the Command.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [GraphManagementReq] :body 
    # @option opts [String] :x_org_id  (default to )
    # @return [InlineResponse204]
    def graph_command_associations_post(command_id, content_type, accept, opts = {})
      data, _status_code, _headers = graph_command_associations_post_with_http_info(command_id, content_type, accept, opts)
      return data
    end

    # Manage the associations of a Command
    # This endpoint will allow you to manage the _direct_ associations of this Command.  A direct association can be a non-homogeneous relationship between 2 different objects, for example Commands and User Groups.   #### Sample Request &#x60;&#x60;&#x60;  curl -X POST https://console.jumpcloud.com/api/v2/commands/{Command_ID}/associations \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{     \&quot;op\&quot;: \&quot;add\&quot;,     \&quot;type\&quot;: \&quot;system_group\&quot;,     \&quot;id\&quot;: \&quot;Group_ID\&quot; }&#39; &#x60;&#x60;&#x60;
    # @param command_id ObjectID of the Command.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [GraphManagementReq] :body 
    # @option opts [String] :x_org_id 
    # @return [Array<(InlineResponse204, Fixnum, Hash)>] InlineResponse204 data, response status code and response headers
    def graph_command_associations_post_with_http_info(command_id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommandsApi.graph_command_associations_post ..."
      end
      # verify the required parameter 'command_id' is set
      if @api_client.config.client_side_validation && command_id.nil?
        fail ArgumentError, "Missing the required parameter 'command_id' when calling CommandsApi.graph_command_associations_post"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling CommandsApi.graph_command_associations_post"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling CommandsApi.graph_command_associations_post"
      end
      # resource path
      local_var_path = "/commands/{command_id}/associations".sub('{' + 'command_id' + '}', command_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse204')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommandsApi#graph_command_associations_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the Systems bound to a Command
    # This endpoint will return all Systems bound to a Command, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the type, id, attributes and paths.  The `attributes` object is a key/value hash of compiled graph attributes for all paths followed.  The `paths` array enumerates each path from this Command to the corresponding System; this array represents all grouping and/or associations that would have to be removed to deprovision the System from this Command.  See `/members` and `/associations` endpoints to manage those collections.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/commands/{Command_ID}/systems \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```
    # @param command_id ObjectID of the Command.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :x_org_id  (default to )
    # @return [Array<GraphObjectWithPaths>]
    def graph_command_traverse_system(command_id, content_type, accept, opts = {})
      data, _status_code, _headers = graph_command_traverse_system_with_http_info(command_id, content_type, accept, opts)
      return data
    end

    # List the Systems bound to a Command
    # This endpoint will return all Systems bound to a Command, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of compiled graph attributes for all paths followed.  The &#x60;paths&#x60; array enumerates each path from this Command to the corresponding System; this array represents all grouping and/or associations that would have to be removed to deprovision the System from this Command.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/commands/{Command_ID}/systems \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
    # @param command_id ObjectID of the Command.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :x_org_id 
    # @return [Array<(Array<GraphObjectWithPaths>, Fixnum, Hash)>] Array<GraphObjectWithPaths> data, response status code and response headers
    def graph_command_traverse_system_with_http_info(command_id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommandsApi.graph_command_traverse_system ..."
      end
      # verify the required parameter 'command_id' is set
      if @api_client.config.client_side_validation && command_id.nil?
        fail ArgumentError, "Missing the required parameter 'command_id' when calling CommandsApi.graph_command_traverse_system"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling CommandsApi.graph_command_traverse_system"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling CommandsApi.graph_command_traverse_system"
      end
      # resource path
      local_var_path = "/commands/{command_id}/systems".sub('{' + 'command_id' + '}', command_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GraphObjectWithPaths>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommandsApi#graph_command_traverse_system\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the System Groups bound to a Command
    # This endpoint will return all System Groups bound to a Command, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the group's type, id, attributes and paths.  The `attributes` object is a key/value hash of compiled graph attributes for all paths followed.  The `paths` array enumerates each path from this Command to the corresponding System Group; this array represents all grouping and/or associations that would have to be removed to deprovision the System Group from this Command.  See `/members` and `/associations` endpoints to manage those collections.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/commands/{Command_ID}/systemgroups \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```
    # @param command_id ObjectID of the Command.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :x_org_id  (default to )
    # @return [Array<GraphObjectWithPaths>]
    def graph_command_traverse_system_group(command_id, content_type, accept, opts = {})
      data, _status_code, _headers = graph_command_traverse_system_group_with_http_info(command_id, content_type, accept, opts)
      return data
    end

    # List the System Groups bound to a Command
    # This endpoint will return all System Groups bound to a Command, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the group&#39;s type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of compiled graph attributes for all paths followed.  The &#x60;paths&#x60; array enumerates each path from this Command to the corresponding System Group; this array represents all grouping and/or associations that would have to be removed to deprovision the System Group from this Command.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/commands/{Command_ID}/systemgroups \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
    # @param command_id ObjectID of the Command.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :x_org_id 
    # @return [Array<(Array<GraphObjectWithPaths>, Fixnum, Hash)>] Array<GraphObjectWithPaths> data, response status code and response headers
    def graph_command_traverse_system_group_with_http_info(command_id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommandsApi.graph_command_traverse_system_group ..."
      end
      # verify the required parameter 'command_id' is set
      if @api_client.config.client_side_validation && command_id.nil?
        fail ArgumentError, "Missing the required parameter 'command_id' when calling CommandsApi.graph_command_traverse_system_group"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling CommandsApi.graph_command_traverse_system_group"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling CommandsApi.graph_command_traverse_system_group"
      end
      # resource path
      local_var_path = "/commands/{command_id}/systemgroups".sub('{' + 'command_id' + '}', command_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GraphObjectWithPaths>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommandsApi#graph_command_traverse_system_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
