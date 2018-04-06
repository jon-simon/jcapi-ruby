=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for JCAPIv2::UserGroupPostAttributes
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserGroupPostAttributes' do
  before do
    # run before each test
    @instance = JCAPIv2::UserGroupPostAttributes.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserGroupPostAttributes' do
    it 'should create an instance of UserGroupPostAttributes' do
      expect(@instance).to be_instance_of(JCAPIv2::UserGroupPostAttributes)
    end
  end
  describe 'test attribute "posix_groups"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "samba_enabled"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

