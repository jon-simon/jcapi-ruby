=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv2::UsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = JCAPIv2::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@instance).to be_instance_of(JCAPIv2::UsersApi)
    end
  end

  # unit tests for graph_user_associations_list
  # List the associations of a User
  # This endpoint returns the _direct_ associations of a User.  A direct association can be a non-homogenous relationship between 2 different objects. for example Users and Systems.   #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/users/{user_id}/associations?targets&#x3D;user_group &#x60;&#x60;&#x60;
  # @param user_id ObjectID of the User.
  # @param content_type 
  # @param accept 
  # @param targets 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphConnection>]
  describe 'graph_user_associations_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_user_associations_post
  # Manage the associations of a User
  # This endpoint allows you to manage the _direct_ associations of a User.  A direct association can be a non-homogenous relationship between 2 different objects. for example Users and Systems.   #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/users/{user_id}/associations &#x60;&#x60;&#x60;
  # @param user_id ObjectID of the User.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [UserGraphManagementReq] :body 
  # @return [nil]
  describe 'graph_user_associations_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_user_member_of
  # List the parent Groups of a User
  # This endpoint returns all the User Groups a User is a member of.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/users/{user_id}/memberof &#x60;&#x60;&#x60;
  # @param user_id ObjectID of the User.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filter Supported operators are: eq, ne, gt, ge, lt, le, between, search, in
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [Array<String>] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_user_member_of test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_user_traverse_application
  # List the Applications bound to a User
  # This endpoint will return all Applications bound to a User, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.   Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of compiled graph attributes for all paths followed.  The &#x60;paths&#x60; array enumerates each path from this User to the corresponding Application; this array represents all grouping and/or associations that would have to be removed to deprovision the Application from this User.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/users/{user_id}/applications &#x60;&#x60;&#x60;
  # @param user_id ObjectID of the User.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_user_traverse_application test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_user_traverse_directory
  # List the Directories bound to a User
  # This endpoint will return all Directories bound to a User, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.   Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of compiled graph attributes for all paths followed.  The &#x60;paths&#x60; array enumerates each path from this User to the corresponding Directory; this array represents all grouping and/or associations that would have to be removed to deprovision the Directory from this User.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/users/{user_id}/directories &#x60;&#x60;&#x60;
  # @param user_id ObjectID of the User.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_user_traverse_directory test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_user_traverse_g_suite
  # List the G Suite instances bound to a User
  # This endpoint will return all G-Suite Instances bound to a User, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.   Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of compiled graph attributes for all paths followed.  The &#x60;paths&#x60; array enumerates each path from this User to the corresponding G Suite instance; this array represents all grouping and/or associations that would have to be removed to deprovision the G Suite instance from this User.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/users/{user_id}/gsuites &#x60;&#x60;&#x60;
  # @param user_id ObjectID of the User.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_user_traverse_g_suite test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_user_traverse_ldap_server
  # List the LDAP servers bound to a User
  # This endpoint will return all LDAP Servers bound to a User, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.   Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of compiled graph attributes for all paths followed.  The &#x60;paths&#x60; array enumerates each path from this User to the corresponding LDAP Server; this array represents all grouping and/or associations that would have to be removed to deprovision the LDAP Server from this User.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/users/{user_id}/ldapservers &#x60;&#x60;&#x60;
  # @param user_id ObjectID of the User.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_user_traverse_ldap_server test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_user_traverse_office365
  # List the Office 365 instances bound to a User
  # This endpoint will return all Office 365 Instances bound to a User, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.   Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of compiled graph attributes for all paths followed.  The &#x60;paths&#x60; array enumerates each path from this User to the corresponding Office 365 instance; this array represents all grouping and/or associations that would have to be removed to deprovision the Office 365 instance from this User.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/users/{user_id}/office365s &#x60;&#x60;&#x60;
  # @param user_id ObjectID of the User.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_user_traverse_office365 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_user_traverse_radius_server
  # List the RADIUS Servers bound to a User
  # This endpoint will return all RADIUS Servers bound to a User, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.    Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of compiled graph attributes for all paths followed.  The &#x60;paths&#x60; array enumerates each path from this User to the corresponding RADIUS Server; this array represents all grouping and/or associations that would have to be removed to deprovision the RADIUS Server from this User.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/users/{user_id}/radiusservers &#x60;&#x60;&#x60;
  # @param user_id ObjectID of the User.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_user_traverse_radius_server test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_user_traverse_system
  # List the Systems bound to a User
  # This endpoint will return all Systems bound to a User, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.   Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of compiled graph attributes for all paths followed.  The &#x60;paths&#x60; array enumerates each path from this User to the corresponding System; this array represents all grouping and/or associations that would have to be removed to deprovision the System from this User.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/users/{user_id}/systems &#x60;&#x60;&#x60;
  # @param user_id ObjectID of the User.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_user_traverse_system test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_user_traverse_system_group
  # List the System Groups bound to a User
  # This endpoint will return all System Groups bound to a User, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.   Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of compiled graph attributes for all paths followed.  The &#x60;paths&#x60; array enumerates each path from this User to the corresponding System Group; this array represents all grouping and/or associations that would have to be removed to deprovision the System Group from this User.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/users/{user_id}/systemgroups &#x60;&#x60;&#x60;
  # @param user_id ObjectID of the User.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_user_traverse_system_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
