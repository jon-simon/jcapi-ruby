=begin
#JumpCloud APIs

# JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module JCAPIv1

  class Tagput
    # A unique name for the Tag.
    attr_accessor :name

    # An array of system ids that are associated to the Tag.
    attr_accessor :systems

    # An array of system user ids that are associated to the Tag.
    attr_accessor :systemusers

    attr_accessor :regular_expressions

    attr_accessor :externally_managed

    attr_accessor :external_dn

    attr_accessor :external_source_type

    attr_accessor :send_to_ldap

    attr_accessor :group_gid

    attr_accessor :group_name


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'systems' => :'systems',
        :'systemusers' => :'systemusers',
        :'regular_expressions' => :'regularExpressions',
        :'externally_managed' => :'externallyManaged',
        :'external_dn' => :'externalDN',
        :'external_source_type' => :'externalSourceType',
        :'send_to_ldap' => :'sendToLDAP',
        :'group_gid' => :'groupGid',
        :'group_name' => :'groupName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'systems' => :'Array<String>',
        :'systemusers' => :'Array<String>',
        :'regular_expressions' => :'Array<String>',
        :'externally_managed' => :'BOOLEAN',
        :'external_dn' => :'String',
        :'external_source_type' => :'String',
        :'send_to_ldap' => :'BOOLEAN',
        :'group_gid' => :'String',
        :'group_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'systems')
        if (value = attributes[:'systems']).is_a?(Array)
          self.systems = value
        end
      end

      if attributes.has_key?(:'systemusers')
        if (value = attributes[:'systemusers']).is_a?(Array)
          self.systemusers = value
        end
      end

      if attributes.has_key?(:'regularExpressions')
        if (value = attributes[:'regularExpressions']).is_a?(Array)
          self.regular_expressions = value
        end
      end

      if attributes.has_key?(:'externallyManaged')
        self.externally_managed = attributes[:'externallyManaged']
      end

      if attributes.has_key?(:'externalDN')
        self.external_dn = attributes[:'externalDN']
      end

      if attributes.has_key?(:'externalSourceType')
        self.external_source_type = attributes[:'externalSourceType']
      end

      if attributes.has_key?(:'sendToLDAP')
        self.send_to_ldap = attributes[:'sendToLDAP']
      end

      if attributes.has_key?(:'groupGid')
        self.group_gid = attributes[:'groupGid']
      end

      if attributes.has_key?(:'groupName')
        self.group_name = attributes[:'groupName']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          systems == o.systems &&
          systemusers == o.systemusers &&
          regular_expressions == o.regular_expressions &&
          externally_managed == o.externally_managed &&
          external_dn == o.external_dn &&
          external_source_type == o.external_source_type &&
          send_to_ldap == o.send_to_ldap &&
          group_gid == o.group_gid &&
          group_name == o.group_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, systems, systemusers, regular_expressions, externally_managed, external_dn, external_source_type, send_to_ldap, group_gid, group_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = JCAPIv1.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
