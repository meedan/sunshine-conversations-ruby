=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.9

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module SmoochApi

  class ClientInfo
    # Name of the app associated with the client.
    attr_accessor :appName

    # The client's avatar URL.
    attr_accessor :avatarUrl

    # The client's carrier.
    attr_accessor :carrier

    # The client's city.
    attr_accessor :city

    # The client's country.
    attr_accessor :country

    # The client's device model.
    attr_accessor :deviceModel

    # The client's device platform.
    attr_accessor :devicePlatform

    # The client user's gender.
    attr_accessor :gender

    # Whether or not payment is enabled for client.
    attr_accessor :isPaymentEnabled

    # The client's locale.
    attr_accessor :locale

    # The client's OS.
    attr_accessor :os

    # The client's OS version.
    attr_accessor :osVersion

    # The client's phone number.
    attr_accessor :phoneNumber

    # The client's radioAccessTechnology (Ex. HSDPA).
    attr_accessor :radioAccessTechnology

    # The client's state or province.
    attr_accessor :state

    # The client's timezone offset.
    attr_accessor :timezone

    # Whether or not the client has wifi.
    attr_accessor :wifi


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'appName' => :'appName',
        :'avatarUrl' => :'avatarUrl',
        :'carrier' => :'carrier',
        :'city' => :'city',
        :'country' => :'country',
        :'deviceModel' => :'deviceModel',
        :'devicePlatform' => :'devicePlatform',
        :'gender' => :'gender',
        :'isPaymentEnabled' => :'isPaymentEnabled',
        :'locale' => :'locale',
        :'os' => :'os',
        :'osVersion' => :'osVersion',
        :'phoneNumber' => :'phoneNumber',
        :'radioAccessTechnology' => :'radioAccessTechnology',
        :'state' => :'state',
        :'timezone' => :'timezone',
        :'wifi' => :'wifi'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'appName' => :'String',
        :'avatarUrl' => :'String',
        :'carrier' => :'String',
        :'city' => :'String',
        :'country' => :'String',
        :'deviceModel' => :'String',
        :'devicePlatform' => :'String',
        :'gender' => :'String',
        :'isPaymentEnabled' => :'BOOLEAN',
        :'locale' => :'String',
        :'os' => :'String',
        :'osVersion' => :'String',
        :'phoneNumber' => :'String',
        :'radioAccessTechnology' => :'String',
        :'state' => :'String',
        :'timezone' => :'Float',
        :'wifi' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'appName')
        self.appName = attributes[:'appName']
      end

      if attributes.has_key?(:'avatarUrl')
        self.avatarUrl = attributes[:'avatarUrl']
      end

      if attributes.has_key?(:'carrier')
        self.carrier = attributes[:'carrier']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'deviceModel')
        self.deviceModel = attributes[:'deviceModel']
      end

      if attributes.has_key?(:'devicePlatform')
        self.devicePlatform = attributes[:'devicePlatform']
      end

      if attributes.has_key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.has_key?(:'isPaymentEnabled')
        self.isPaymentEnabled = attributes[:'isPaymentEnabled']
      end

      if attributes.has_key?(:'locale')
        self.locale = attributes[:'locale']
      end

      if attributes.has_key?(:'os')
        self.os = attributes[:'os']
      end

      if attributes.has_key?(:'osVersion')
        self.osVersion = attributes[:'osVersion']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phoneNumber = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'radioAccessTechnology')
        self.radioAccessTechnology = attributes[:'radioAccessTechnology']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.has_key?(:'wifi')
        self.wifi = attributes[:'wifi']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
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
          appName == o.appName &&
          avatarUrl == o.avatarUrl &&
          carrier == o.carrier &&
          city == o.city &&
          country == o.country &&
          deviceModel == o.deviceModel &&
          devicePlatform == o.devicePlatform &&
          gender == o.gender &&
          isPaymentEnabled == o.isPaymentEnabled &&
          locale == o.locale &&
          os == o.os &&
          osVersion == o.osVersion &&
          phoneNumber == o.phoneNumber &&
          radioAccessTechnology == o.radioAccessTechnology &&
          state == o.state &&
          timezone == o.timezone &&
          wifi == o.wifi
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [appName, avatarUrl, carrier, city, country, deviceModel, devicePlatform, gender, isPaymentEnabled, locale, os, osVersion, phoneNumber, radioAccessTechnology, state, timezone, wifi].hash
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
        temp_model = SmoochApi.const_get(type).new
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
