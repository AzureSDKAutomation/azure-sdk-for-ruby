# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01
  module Models
    #
    # OpenId Connect Provider details.
    #
    class OpenidConnectProviderContract < Resource

      include MsRestAzure

      # @return [String] User-friendly OpenID Connect Provider name.
      attr_accessor :display_name

      # @return [String] User-friendly description of OpenID Connect Provider.
      attr_accessor :description

      # @return [String] Metadata endpoint URI.
      attr_accessor :metadata_endpoint

      # @return [String] Client ID of developer console which is the client
      # application.
      attr_accessor :client_id

      # @return [String] Client Secret of developer console which is the client
      # application.
      attr_accessor :client_secret


      #
      # Mapper for OpenidConnectProviderContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OpenidConnectProviderContract',
          type: {
            name: 'Composite',
            class_name: 'OpenidConnectProviderContract',
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
                  MaxLength: 50
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
              metadata_endpoint: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.metadataEndpoint',
                type: {
                  name: 'String'
                }
              },
              client_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.clientId',
                type: {
                  name: 'String'
                }
              },
              client_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientSecret',
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
