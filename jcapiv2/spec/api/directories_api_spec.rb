=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv2::DirectoriesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DirectoriesApi' do
  before do
    # run before each test
    @instance = JCAPIv2::DirectoriesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DirectoriesApi' do
    it 'should create an instance of DirectoriesApi' do
      expect(@instance).to be_instance_of(JCAPIv2::DirectoriesApi)
    end
  end

  # unit tests for directories_list
  # List All Directories
  # This endpoint returns all active directories (LDAP, O365 Suite, G-Suite).  #### Sample Request &#x60;&#x60;&#x60;  curl -X GET https://console.jumpcloud.com/api/v2/directories \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
  # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
  # @option opts [Array<String>] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<Directory>]
  describe 'directories_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
