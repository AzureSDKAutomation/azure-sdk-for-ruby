# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Property details.
    #
    class PropertyContract

      include MsRestAzure

      # @return [String] Uniquely identifies the property within the current
      # API Management service instance. The value is a valid relative URL in
      # the format of /properties/{propId} where {propId} is a property
      # identifier.
      attr_accessor :id

      # @return [String] Unique name of Property. It may contain only letters,
      # digits, period, dash, and underscore characters.
      attr_accessor :name

      # @return [String] Value of the property. Can contain policy expressions.
      # It may not be empty or consist only of whitespace.
      attr_accessor :value

      # @return [Array<String>] Optional tags that when provided can be used to
      # filter the property list.
      attr_accessor :tags

      # @return [Boolean] Determines whether the value is a secret and should
      # be encrypted or not. Default value is false.
      attr_accessor :secret


      #
      # Mapper for PropertyContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PropertyContract',
          type: {
            name: 'Composite',
            class_name: 'PropertyContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1,
                  Pattern: '^[A-Z0-9-._]+$'
                },
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                constraints: {
                  MaxLength: 4096,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                constraints: {
                  MaxItems: 32
                },
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secret',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
