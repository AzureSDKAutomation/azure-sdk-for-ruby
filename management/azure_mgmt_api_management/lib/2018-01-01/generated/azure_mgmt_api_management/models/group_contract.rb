# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01
  module Models
    #
    # Contract details.
    #
    class GroupContract < Resource

      include MsRestAzure

      # @return [String] Group name.
      attr_accessor :display_name

      # @return [String] Group description. Can contain HTML formatting tags.
      attr_accessor :description

      # @return [Boolean] true if the group is one of the three system groups
      # (Administrators, Developers, or Guests); otherwise false.
      attr_accessor :built_in

      # @return [GroupType] Group type. Possible values include: 'custom',
      # 'system', 'external'
      attr_accessor :group_contract_type

      # @return [String] For external groups, this property contains the id of
      # the group from the external identity provider, e.g. for Azure Active
      # Directory aad://<tenant>.onmicrosoft.com/groups/<group object id>;
      # otherwise the value is null.
      attr_accessor :external_id


      #
      # Mapper for GroupContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GroupContract',
          type: {
            name: 'Composite',
            class_name: 'GroupContract',
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
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                constraints: {
                  MaxLength: 1000
                },
                type: {
                  name: 'String'
                }
              },
              built_in: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.builtIn',
                type: {
                  name: 'Boolean'
                }
              },
              group_contract_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'Enum',
                  module: 'GroupType'
                }
              },
              external_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.externalId',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
