# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_12_01
  module Models
    #
    # The source user image virtual hard disk. The virtual hard disk will be
    # copied before being attached to the virtual machine. If SourceImage is
    # provided, the destination virtual hard drive must not exist.
    #
    class ImageUpdate < UpdateResource

      include MsRestAzure

      # @return [SubResource] The source virtual machine from which Image is
      # created.
      attr_accessor :source_virtual_machine

      # @return [ImageStorageProfile] Specifies the storage settings for the
      # virtual machine disks.
      attr_accessor :storage_profile

      # @return [String] The provisioning state.
      attr_accessor :provisioning_state


      #
      # Mapper for ImageUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageUpdate',
          type: {
            name: 'Composite',
            class_name: 'ImageUpdate',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              source_virtual_machine: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourceVirtualMachine',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              storage_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ImageStorageProfile'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
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
