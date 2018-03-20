# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # The response model for the export API output operation.
    #
    class ApiExportResult

      include MsRestAzure

      # @return [Array<Integer>] Response content bytes.
      attr_accessor :content

      # @return [HttpStatusCode] Possible values include: 'Continue', 'OK',
      # 'Created', 'Accepted', 'NotFound', 'Conflict'
      attr_accessor :status_code

      # @return [String]
      attr_accessor :request_id


      #
      # Mapper for ApiExportResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiExportResult',
          type: {
            name: 'Composite',
            class_name: 'ApiExportResult',
            model_properties: {
              content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'content',
                type: {
                  name: 'ByteArray'
                }
              },
              status_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statusCode',
                type: {
                  name: 'Enum',
                  module: 'HttpStatusCode'
                }
              },
              request_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestId',
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
