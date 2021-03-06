=begin
#JumpCloud APIs

# JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JCAPIv1
  class CommandTriggersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Launch a command via a Trigger
    # This endpoint allows you to launch a command based on a defined trigger.  #### Sample Requests  **Launch a Command via a Trigger**  ``` curl --silent \\      -X 'POST' \\      -H \"x-api-key: {API_KEY}\" \\      \"https://console.jumpcloud.com/api/command/trigger/{TriggerName}\" ``` **Launch a Command via a Trigger passing a JSON object to the command** ``` curl --silent \\      -X 'POST' \\      -H \"x-api-key: {API_KEY}\" \\      -H 'Accept: application/json' \\      -H 'Content-Type: application/json' \\      -d '{ \"srcip\":\"192.168.2.32\", \"attack\":\"Cross Site Scripting Attempt\" }' \\      \"https://console.jumpcloud.com/api/command/trigger/{TriggerName}\" ```
    # @param triggername 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id  (default to )
    # @return [nil]
    def command_trigger_webhook_post(triggername, content_type, accept, opts = {})
      command_trigger_webhook_post_with_http_info(triggername, content_type, accept, opts)
      return nil
    end

    # Launch a command via a Trigger
    # This endpoint allows you to launch a command based on a defined trigger.  #### Sample Requests  **Launch a Command via a Trigger**  &#x60;&#x60;&#x60; curl --silent \\      -X &#39;POST&#39; \\      -H \&quot;x-api-key: {API_KEY}\&quot; \\      \&quot;https://console.jumpcloud.com/api/command/trigger/{TriggerName}\&quot; &#x60;&#x60;&#x60; **Launch a Command via a Trigger passing a JSON object to the command** &#x60;&#x60;&#x60; curl --silent \\      -X &#39;POST&#39; \\      -H \&quot;x-api-key: {API_KEY}\&quot; \\      -H &#39;Accept: application/json&#39; \\      -H &#39;Content-Type: application/json&#39; \\      -d &#39;{ \&quot;srcip\&quot;:\&quot;192.168.2.32\&quot;, \&quot;attack\&quot;:\&quot;Cross Site Scripting Attempt\&quot; }&#39; \\      \&quot;https://console.jumpcloud.com/api/command/trigger/{TriggerName}\&quot; &#x60;&#x60;&#x60;
    # @param triggername 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def command_trigger_webhook_post_with_http_info(triggername, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommandTriggersApi.command_trigger_webhook_post ..."
      end
      # verify the required parameter 'triggername' is set
      if @api_client.config.client_side_validation && triggername.nil?
        fail ArgumentError, "Missing the required parameter 'triggername' when calling CommandTriggersApi.command_trigger_webhook_post"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling CommandTriggersApi.command_trigger_webhook_post"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling CommandTriggersApi.command_trigger_webhook_post"
      end
      # resource path
      local_var_path = "/command/trigger/{triggername}".sub('{' + 'triggername' + '}', triggername.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommandTriggersApi#command_trigger_webhook_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
