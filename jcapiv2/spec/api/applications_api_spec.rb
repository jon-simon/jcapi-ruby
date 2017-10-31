=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv2::ApplicationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApplicationsApi' do
  before do
    # run before each test
    @instance = JCAPIv2::ApplicationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApplicationsApi' do
    it 'should create an instance of ApplicationsApi' do
      expect(@instance).to be_instance_of(JCAPIv2::ApplicationsApi)
    end
  end

  # unit tests for graph_application_associations_list
  # List the associations of an Application
  # This endpoint will return the _direct_ associations of an Application. A direct association can be a non-homogenous relationship between 2 different objects. for example Applications and User Groups.   #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/applications/{application_id}/associations?targets&#x3D;user_group &#x60;&#x60;&#x60;
  # @param application_id ObjectID of the Application.
  # @param targets 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphConnection>]
  describe 'graph_application_associations_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_application_associations_post
  # Manage the associations of an Application
  # This endpoint allows you to manage the _direct_ associations of an Application. A direct association can be a non-homogenous relationship between 2 different objects. for example Application and User Groups.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/applications/{application_id}/associations &#x60;&#x60;&#x60;
  # @param application_id ObjectID of the Application.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [GraphManagementReq] :body 
  # @return [nil]
  describe 'graph_application_associations_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_application_traverse_user
  # List the Users associated with an Application
  # This endpoint will return Users associated with an Application. Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of attributes specifically set for this group.  The &#x60;paths&#x60; array enumerates each path from this Application to the corresponding User; this array represents all grouping and/or associations that would have to be removed to deprovision the User from this Application.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/applications/{application_id}/users &#x60;&#x60;&#x60;
  # @param application_id ObjectID of the Application.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_application_traverse_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_application_traverse_user_group
  # List the User Groups associated with an Application
  # This endpoint will return User Groups associated with an Application. Each element will contain the group&#39;s type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of attributes specifically set for this group.  The &#x60;paths&#x60; array enumerates  each path from this Application to the corresponding User Group; this array represents all grouping and/or associations that would have to be removed to deprovision the User Group from this Application.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/applications/{application_id}/usergroups &#x60;&#x60;&#x60;
  # @param application_id ObjectID of the Application.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_application_traverse_user_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end