# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01
  module Models
    #
    # Parameters supplied to the Update Group operation.
    #
    class GroupUpdateParameters

      include MsRestAzure

      # @return [String] Group name.
      attr_accessor :display_name

      # @return [String] Group description.
      attr_accessor :description

      # @return [GroupType] Group type. Possible values include: 'custom',
      # 'system', 'external'
      attr_accessor :type

      # @return [String] Identifier of the external groups, this property
      # contains the id of the group from the external identity provider, e.g.
      # for Azure Active Directory aad://<tenant>.onmicrosoft.com/groups/<group
      # object id>; otherwise the value is null.
      attr_accessor :external_id


      #
      # Mapper for GroupUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GroupUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'GroupUpdateParameters',
            model_properties: {
              display_name: {
                client_side_validation: true,
                required: false,
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
                type: {
                  name: 'String'
                }
              },
              type: {
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
